package.path = "./spec/mocked/?.lua;" .. package.path

-- awesome is always defined in the environment of awesome modules
-- this means tests will not load the mocked awesome.lua
-- to workaround we load it here and bind it to the global table/namespace
_G.awesome = require("awesome")

local Pomodoro = require "init"


describe("Should set the default", function()
    -- Override spawn_sync so that the test can pass if we are running the
    -- test suite in a desktop session with values saved in the XRDB
    function Pomodoro.spawn_sync() return "" end

    local pomodoro = Pomodoro()

    it('break duration to 5 minutes', function()
        assert.are.equal(300, pomodoro.config.short_break_duration)
    end)
    it('work duration to 25 minutes', function()
        assert.are.equal(1500, pomodoro.config.work_duration)
    end)
    it('time change steps to one minute', function()
        assert.are.equal(60, pomodoro.config.change_step)
    end)
    it('next state to work', function()
        assert.are.equal(true, pomodoro.working)
    end)
end)

describe('The timer widget should display', function()
    local pomodoro = Pomodoro()

    local s = spy.on(pomodoro.timer_widget, "set_markup")

    it('the time in H:M:S format when the left time is greater than an hour', function()
        pomodoro.changed = true
        pomodoro:update_timer_widget(3601)
        assert.spy(s).was_called_with(pomodoro.timer_widget, "01:00:01")
    end)
    it('the time in M:S format when the left time is less than an hour', function()
        pomodoro.changed = true
        pomodoro:update_timer_widget(1500)
        assert.spy(s).was_called_with(pomodoro.timer_widget, "25:00")
    end)
end)

describe('Starting a pomodoro', function()
    local pomodoro = Pomodoro()
    it('should start the timer', function()
        local s = spy.on(pomodoro.timer, 'again')
        pomodoro:start()
        assert.spy(s).was_called_with(pomodoro.timer)
    end)
end)


describe('Stopping a pomodoro', function()
    local pomodoro = Pomodoro()
    it('should stop the timer', function()
        pomodoro.timer.started = true
        local s = spy.on(pomodoro.timer, 'stop')
        pomodoro:stop()
        assert.spy(s).was_called_with(pomodoro.timer)
    end)
    it('should set is_paused to false', function()
        pomodoro:stop()
        assert.are.equal(false, pomodoro.is_paused)
    end)
    it('should toggle working', function()
        working = true
        pomodoro:stop()
        assert.are.not_equal(working, pomodoro.working)
        pomodoro:stop()
        assert.are.equal(working, pomodoro.working)
    end)
    it('in work mode should trigger break mode and change time accordingly', function()
        pomodoro.working = true
        pomodoro:stop()
        assert.False(pomodoro.working)
        assert.False(pomodoro.npomodoros % 4 == 0)
        assert.are.equal(pomodoro.config.short_break_duration, pomodoro.time_left)
    end)
    it('in break mode should trigger work mode and change time accordingly', function()
        pomodoro.working = false
        local s = spy.on(pomodoro, 'update_timer_widget')
        pomodoro:stop()
        assert.are.equal(pomodoro.config.work_duration, pomodoro.time_left)
        assert.spy(s).was_called_with(pomodoro, pomodoro.config.work_duration)
    end)
end)

describe('Pausing a pomodoro', function()
    it('should stop the timer', function()
        local pomodoro = Pomodoro()
        pomodoro.timer.started = true
        local s = spy.on(pomodoro.timer, 'stop')
        pomodoro:pause()
        assert.spy(s).was_called_with(pomodoro.timer)
    end)
    it('should set is_paused to true', function()
        local pomodoro = Pomodoro()
        pomodoro:pause()
        assert.are.equal(true, pomodoro.is_paused)
    end)
end)

describe('Toggling locking pomodoro', function()
    it('should toggle the locked state', function()
        local pomodoro = Pomodoro()
        assert.True(pomodoro.locked)
        pomodoro:toggle_timelock()
        assert.False(pomodoro.locked)
        pomodoro:toggle_timelock()
        assert.True(pomodoro.locked)
    end)
end)

describe('Locking pomodoro', function()
    it('should prevent time changes', function()
        local pomodoro = Pomodoro()
        local time_left = pomodoro.time_left
        pomodoro.locked = true
        pomodoro:modify_time(true)
        -- change shouldn't be allowed
        assert.are.equal(time_left, pomodoro.time_left)
    end)
end)

describe('Unlocking pomodoro', function()
    it('should allow time changes', function()
        local pomodoro = Pomodoro()
        local time_left = pomodoro.time_left
        pomodoro.locked = false
        pomodoro:modify_time(true)
        -- if unlocked change should be allowed
        assert.are_not.equal(time_left, pomodoro.time_left)
        assert.are.equal(time_left + pomodoro.config.change_step, pomodoro.time_left)
    end)
end)

describe('Preserving pomodoros between restarts', function()
    it('should preserve the last remaining time in the XRDB', function()
        Pomodoro.spawn_sync = function()
            return [[
            awesome.Pomodoro.time:  716
            awesome.Pomodoro.started:  0
            awesome.Pomodoro.working: 1
            XTerm*faceName: consolas
            xterm*.background:      grey5
            ]]
        end
        local pomodoro = Pomodoro()
        assert.are.equal(716, pomodoro.time_left)
    end)
    it('should preserve the last remaining time in the XRDB, even if it is negative', function()
        Pomodoro.spawn_sync = function()
            return [[
            awesome.Pomodoro.time:  -716
            awesome.Pomodoro.started:  0
            XTerm*faceName: consolas
            xterm*.background:      grey5
            ]]
        end
        local pomodoro = Pomodoro()
        assert.are.equal(-716, pomodoro.time_left)
    end)
    it('should start the pomodoro right away if it was started in the previous session', function()
        Pomodoro.spawn_sync = function()
            return [[
            awesome.Pomodoro.time:  716
            awesome.Pomodoro.started:  1
            XTerm*faceName: consolas
            xterm*.background:      grey5
            ]]
        end
        local pomodoro = Pomodoro()
        local s = spy.on(pomodoro, 'start')
    end)
    it('should use the normal duration and not start a pomodoro if not found in the database', function()
        -- Ensure work_duration is still the original value
        Pomodoro.config.work_duration = 1500
        Pomodoro.spawn_sync = function()
            return [[
            XTerm*faceName: consolas
            xterm*.background:      grey5
            ]]
        end
        local pomodoro = Pomodoro()
        local s = spy.on(pomodoro, 'start')
        assert.spy(s).was_not_called()
        assert.are.equal(1500, pomodoro.time_left)
    end)

    it('should not start the timer if it was paused or stopped', function()
        Pomodoro.spawn_sync = function()
            return [[
            awesome.Pomodoro.time:  716
            awesome.Pomodoro.started: 0
            XTerm*faceName: consolas
            xterm*.background:      grey5
            ]]
        end
        local pomodoro = Pomodoro()
        local s = spy.on(pomodoro, 'start')
        assert.spy(s).was_not_called()
        assert.are.equal(716, pomodoro.time_left)
    end)
end)

describe('Long breaks', function()
    local pomodoro = Pomodoro()
    it('should properly start a long break after 4 full pomodoros', function()
        for _ = 1, 4 do
            pomodoro.working = true
            pomodoro.left = 0
            assert.are.not_equal(15 * 60, pomodoro.config.short_break_duration)
            pomodoro:stop()
        end
        assert.are.equal(15 * 60, pomodoro.config.long_break_duration)
    end)
end)

describe('Fade color', function()
    local pomodoro = Pomodoro()
    local color1 = '#ff0000'
    local color2 = '#00ff00'
    it('should return the first color when amount is 0', function()
        assert.are.equal(color1, pomodoro.fade_color(color1, color2, 0))
    end)
    it('should return the second color when amount is 1', function()
        assert.are.equal(color2, pomodoro.fade_color(color1, color2, 1))
    end)
    it('should interpolate between two colors', function()
        local color3 = '#7f7f00'
        assert.are.equal(color3, pomodoro.fade_color(color1, color2, 0.5))
    end)
end)
