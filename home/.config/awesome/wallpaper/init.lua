local gears = require("gears")
local awful = require("awful")

-- Couldn't find an obvious way to have $WALLPAPERS set at time this executes:
local wp_path = os.getenv("HOME") .. "/wallpaper/"

local wp_timeout  = 60 * 30
local wp_timer = gears.timer { timeout = wp_timeout, autostart=true }
local startup_timer = gears.timer { timeout = 5, single_shot=true, autostart=true }

wp_index = 1
wp_paths = {}
wp_screens = {}

local themes_path = gears.filesystem.get_themes_dir()
table.insert(wp_paths, 1, themes_path .. "default/background.png")
current_wp = wp_paths[1]

-- Seed and stir our PRNG:
math.randomseed(os.time())
math.random(); math.random(); math.random()

wallpaper_i = 1
-- test a single result for filename
local on_line = function(line)
  if
    string.match(line, "[pP][nN][gG]$") == nil and
    string.match(line, "[jJ][pP][eE]?[gG]$") == nil
  then
    return
  end
  table.insert(wp_paths, wallpaper_i, wp_path .. line)
  wallpaper_i = wallpaper_i + 1
end

local on_wallpapers_listed = function(reason, code)
  if code ~= 0 then
    return
  end
  wp_rotate()
end


awful.spawn.with_line_callback("ls -1 " .. wp_path, {stdout=on_line, exit=on_wallpapers_listed})


local on_tick = function()
  if wallpaper_i < 2 then
    return
  end
  wp_rotate()
end

wp_rotate = function()
  wp_index = math.random( 1, wallpaper_i)
  current_wp = wp_paths[wp_index]
  if current_wp == nil then
    return
  end
  for k, v in pairs(wp_screens) do
    gears.wallpaper.maximized(current_wp, v, true)
  end
end

start = function(s)
    table.insert(wp_screens, s.index, s)
    wp_rotate()
end
stop = function(s)
    table.remove(wp_screens, s.index)
end

wp_timer:connect_signal("timeout", on_tick)
startup_timer:connect_signal("timeout", wp_rotate)

return {
  start = start,
  stop = stop,
  rotate = wp_rotate,
  name = function()
    return current_wp
  end,
}
