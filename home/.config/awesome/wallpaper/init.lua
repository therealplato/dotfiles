local gears = require("gears")
local awful = require("awful")

-- Couldn't find an obvious way to have $WALLPAPERS set at time this executes:
local wp_path = os.getenv("HOME") .. "/wallpaper/"

local wp_timeout  = 60 * 30
local wp_timer = gears.timer { timeout = wp_timeout }

local i = 1
wp_index = 1
wp_paths = {}
wp_screens = {}

local themes_path = gears.filesystem.get_themes_dir()
table.insert(wp_paths, 1, themes_path .. "default/background.png")

-- test a single result for filename 
local on_line = function(line)
  if 
    string.match(line, "[pP][nN][gG]$") == nil and
    string.match(line, "[jJ][pP][eE]?[gG]$") == nil 
  then
    return
  end
  wp_paths[i] = line
  i = i + 1
end

awful.spawn.with_line_callback("ls -1 " .. wp_path, {stdout=on_line})


local on_tick = function()
  if #wp_paths < 2 then
    return
  end
  wp_index = math.random( 1, #wp_paths)
  for k, v in pairs(wp_screens) do
    wp_rotate(v)
  end
end

wp_rotate = function(s)
    f = wp_paths[wp_index]
    if f == nil then
      gears.debug.print_error("can't rotate due to nil path")
      return
    end
    gears.wallpaper.maximized(wp_path .. f, s, true)
end


start = function(s)
    gears.debug.print_error(gears.debug.dump_return(s, "screen"))
    table.insert(wp_screens, s.index, s)
end
stop = function(s)
    table.remove(wp_paths)
end

wp_timer:connect_signal("timeout", on_tick)
wp_timer:start()

return {
  start = start,
  stop = stop,
}
