local awful = require("awful")
local beautiful = require("beautiful")
local naughty = require("naughty")
local timer = require("gears.timer")
local wibox = require("wibox")


local function format_time(seconds)
    if seconds >= 3600 then
        return os.date("!%H:%M:%S", seconds)
    else
        return os.date("!%M:%S", seconds)
    end
end


local function split_rgb(color)
    -- Return a table of three elements: the hex values of
    -- each of the pairs of `color`

    local r = tonumber(color:sub(2, 3), 16)
    local g = tonumber(color:sub(4, 5), 16)
    local b = tonumber(color:sub(6, 7), 16)

    return {r, g, b}
end


-- The Pomodoro module
local Pomodoro = {}

Pomodoro.config = {
    break_title = "Break time over.",
    break_text = "Get back to work!",

    work_title = "Pomodoro finished.",
    work_text = "Time for a break!",

    collected_text = 'Collected %d pomodoros so far.\n',

    auto_start_pomodoro = true,

    allow_timer_beyond_duration = true,

    always_show_timer = true;

    change_step = 60,

    long_break_frequency = 4,

    short_break_duration = 5 * 60,
    long_break_duration = 15 * 60,
    work_duration = 25 * 60,
}


-- Helper functions

function Pomodoro.spawn_sync(cmd)
    local fh = io.popen(cmd, 'r')
    local stdout = fh:read('*all')
    fh:close()
    return stdout
end


function Pomodoro.notify(title, text)
    naughty.notify({
        bg = beautiful.bg_urgent,
        fg = beautiful.fg_urgent,
        title = title,
        text  = text,
        timeout = 30})
end


function Pomodoro.fade_color(color1, color2, amount)
    -- Return an interpolation of the color1 and color2
    -- based on amount

    color1 = split_rgb(color1)
    color2 = split_rgb(color2)

    local r = math.floor(color1[1] - ((color1[1] - color2[1]) * amount))
    local g = math.floor(color1[2] - ((color1[2] - color2[2]) * amount))
    local b = math.floor(color1[3] - ((color1[3] - color2[3]) * amount))

    return string.format("#%02x%02x%02x", r, g, b)
end


function Pomodoro:make_tooltip()
    local collected = self.config.collected_text:format(self.npomodoros)

    local settings = "Settings:\n * work: %s\n * short break: %s\n * long break: %s"
    settings = settings:format(format_time(self.config.work_duration),
                               format_time(self.config.short_break_duration),
                               format_time(self.config.long_break_duration))

    if self.timer.started then
        local state = 'Break'

        if self.working then
            state = 'Work'
        end

        return collected .. state .. ' ending in ' .. format_time(self.time_left)
    else
        return string.format("%s\nPomodoro not running\n\n%s",
                             collected,
                             settings)
    end
end


function Pomodoro:update_icon_widget()
    local color
    local work_color     = beautiful.pomodoro_work     or "#FF0000"
    local ripe_color     = beautiful.pomodoro_ripe     or "#00FF00"
    local inactive_color = beautiful.pomodoro_inactive or "#C0C0C0"
    local markup = "<span fgcolor='%s'>%s</span>"
    local icon = ""

    -- Select icon based on status
    if self.is_paused then
        -- Paused - show a timer icon
        icon = "&#9202;"

        color = inactive_color

    elseif self.working then
        -- Pomodoro - show a tomato
        icon = "&#127813;"

        local amount = 1 - math.max(self.time_left / self.config.work_duration, 0)
        color = Pomodoro.fade_color(work_color, ripe_color, amount)
    else
        -- On break - show a beach icon
        icon = "&#9969;"

        local amount = math.max(1 - self.time_left / self.config.short_break_duration, 0)
        color = Pomodoro.fade_color(ripe_color, work_color, amount)
    end

    -- Update icon
    self.icon_widget:set_markup(markup:format(color, icon))
end


function Pomodoro:update_timer_widget(t)
    local markup, s

    if t < 0 then
        s = "-"
        t = -t
    else
        s = ""
    end

    if self.config.always_show_timer or self.changed or self.timer.started then
        markup = s .. format_time(t)
    else
        markup = ""
    end

    self.timer_widget:set_markup(markup)
end


function Pomodoro:start()
    self.last_time = os.time()
    self.timer:again()

    self.is_paused = false

    if self.working then
        self.icon_widget:emit_signal("work_start")
    else
        self.icon_widget:emit_signal("break_start")
    end
end


function Pomodoro:toggle()
    if self.time_left <= 0 then
        self:stop()
        if self.auto_start_pomodoro then
            self:start()
        end
    else
        if self.timer.started then
            self:pause()
        else
            self:start()
        end
    end
end


function Pomodoro:pause()
    if self.timer.started then
        self.timer:stop()
    end

    self.is_paused = true
    self:update_icon_widget()
end


function Pomodoro:stop()
    if self.timer.started then
        self.timer:stop()
    end

    self.is_paused = false

    if self.working then
        self.icon_widget:emit_signal("work_stop", self.time_left)
        self.working = false

        self.npomodoros = self.npomodoros + 1

        local long_break_frequency = self.config.long_break_frequency

        if self.npomodoros % long_break_frequency == 0 then
            self.time_left = self.config.long_break_duration
        else
            self.time_left = self.config.short_break_duration
        end

    else
        self.icon_widget:emit_signal("break_stop", self.time_left)
        self.working = true
        self.time_left = self.config.work_duration
    end
    self:update_timer_widget(self.time_left)
    self:update_icon_widget()
end


function Pomodoro:toggle_timelock()
    if self.locked then
        self.locked = false
    else
        self.locked = true
    end

    lock_text = self.locked and "Modifying time disallowed" or "Modifying time allowed"

    naughty.notify({
	bg = beautiful.bg_info,
	fg = beautiful.fg_normal,
	title = "Time lock",
	text = lock_text,
	timeout = 5,
    })

end


function Pomodoro:modify_time(add)
    -- Add self.config.change_step minutes to self.config.work duration if add == true,
    -- otherwise subtract.

    if not self.locked then
        self.changed = true

        if add then
            self:update_timer_widget(self.config.work_duration + self.config.change_step)
            self.config.work_duration = self.config.work_duration + self.config.change_step
            self.time_left = self.config.work_duration
        else
            if self.config.work_duration > self.config.change_step then
                self:update_timer_widget(self.config.work_duration - self.config.change_step)
                self.config.work_duration = self.config.work_duration - self.config.change_step
                self.time_left = self.config.work_duration
            end
        end
        self.changed_timer:again()
    end
end


function Pomodoro:get_buttons()
    return awful.util.table.join(
        awful.button({ }, 1, function() self:toggle() end),
        awful.button({ }, 2, function() self:toggle_timelock() end),
        awful.button({ }, 3, function() self:stop() end),
        awful.button({ }, 4, function() self:modify_time(true) end),
        awful.button({ }, 5, function() self:modify_time(false) end)
    )
end


-- Table that will contain signal handlers
Pomodoro.handlers = {}


function Pomodoro.handlers.changed_timer(self)
    self.changed = false
    self.changed_timer:again()
    self.changed_timer:stop()
    self.timer_widget:set_markup(format_time(self.config.work_duration))
end


function numify(var)
    return var and 1 or 0
end


function nilboolify(num)
    val = tonumber(num)
    if val == nil then
        return nil
    else
        return val == 1 or false
    end
end


function nildefault(val, default)
    if val == nil then
        return default
    else
        return val
    end
end


function Pomodoro:load_xresources_values()
    local xresources = self.spawn_sync('xrdb -query')
    local last_run = {
        -- time = time remaining in the timer/clock
        time = tonumber(xresources:match('awesome.Pomodoro.time:%s+(-?%d+)')),
        -- boolean = if internal timer is running, true when pomodoro is active
        started = nilboolify(xresources:match('awesome.Pomodoro.started:%s+([01])')),
        -- boolean = true when on a work pomodoro (i.e. not a break)
        working = nilboolify(xresources:match('awesome.Pomodoro.working:%s+([01])')),
        -- boolean = prevents changing time with mouse scroll
        locked = nilboolify(xresources:match('awesome.Pomodoro.locked:%s+([01])')),
        -- boolean = when started but timer is not running. This is somewhat redundant with started
        is_paused = nilboolify(xresources:match('awesome.Pomodoro.paused:%s+([01])')),
        -- number of pomodoros completed so far
        pomodoros = tonumber(xresources:match('awesome.Pomodoro.npomodoros:%s+(%d+)'))
    }
    return last_run
end


function Pomodoro.handlers.exit(self, restarting)
    -- Save current state in xrdb.
    -- run this synchronously cause otherwise it is not saved properly -.-
    if restarting then
        local started_as_number = numify(self.timer.started)
        local working_as_number = numify(self.working)
        local locked_as_number = numify(self.locked)
        local paused_as_number = numify(self.is_paused)
        self.spawn_sync('echo "awesome.Pomodoro.time: ' .. self.time_left
                         .. '\nawesome.Pomodoro.started: ' .. started_as_number
                         .. '\nawesome.Pomodoro.working: ' .. working_as_number
                         .. '\nawesome.Pomodoro.locked: ' .. locked_as_number
                         .. '\nawesome.Pomodoro.paused: ' .. paused_as_number
                         .. '\nawesome.Pomodoro.npomodoros: ' .. self.npomodoros
                         .. '" | xrdb -merge')
    end
end


function Pomodoro.handlers.ticking(self)
    -- Function that keeps the logic for ticking

    local now = os.time()
    self.time_left = self.time_left - (now - self.last_time)
    self.last_time = now

    if self.time_left == 0 then
        if not self.config.allow_timer_beyond_duration then
            self.timer:stop()
        end

        if self.working then
            self.icon_widget:emit_signal("work_elapsed")
        else
            self.icon_widget:emit_signal("break_elapsed")
        end
    end

    self:update_timer_widget(self.time_left)
    self:update_icon_widget()
end


function Pomodoro.init(config)
    -- error("initializing pomo")
    -- Return a new Pomodoro object

    local self = setmetatable({}, Pomodoro)

    if config and type(config) == "table" then
        for k, v in pairs(config) do
            if self.config[k] ~= nil then
                self.config[k] = v
            end
        end
    end

    -- We'll try to grab the values from the last pomodoro session
    local last_run = self:load_xresources_values()

    self.npomodoros = last_run.npomodoros or 0
    self.working = nildefault(last_run.working, true)
    self.locked = nildefault(last_run.locked, true)
    self.is_paused = last_run.is_paused or false

    if last_run.time ~= nil then
        self.time_left = last_run.time
    else
        self.time_left = self.config.work_duration
    end

    self.changed = false
    self.changed_timer = timer({timeout = 3})
    self.changed_timer:connect_signal("timeout", function ()
        self.handlers.changed_timer(self)
    end)

    self.timer_widget = wibox.widget.textbox()
    self.icon_widget = wibox.widget.textbox()

    -- Timer configuration
    self.timer = timer{timeout = 1}
    self.timer:connect_signal("timeout", function()
        self.handlers.ticking(self)
    end)

    self:update_icon_widget()

    -- Notifications
    self.icon_widget:connect_signal("work_elapsed", function()
        self.notify(self.config.work_title,
                    self.config.work_text)
    end)

    self.icon_widget:connect_signal("break_elapsed", function()
        self.notify(self.config.break_title,
                    self.config.break_text)
    end)

    awesome.connect_signal("exit", function(restart)
        self.handlers.exit(self, restart)
    end)

    self.timer_widget:buttons(self:get_buttons())
    self.icon_widget:buttons(self:get_buttons())

    self:update_timer_widget(self.time_left)

    -- Attach the tooltip to both widgets with the make_tooltip timer funciton
    awful.tooltip({objects = {self.timer_widget, self.icon_widget},
                   timer_function = function() return self:make_tooltip() end})

    if last_run.started and not last_run.is_paused then
        self:start()
    end

    return self
end

Pomodoro.__index = Pomodoro
setmetatable(Pomodoro, {__call = function(cls, config) return cls.init(config) end})
return Pomodoro
