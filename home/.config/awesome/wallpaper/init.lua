local gears = require("gears")
local awful = require("awful")

local themes_path = gears.filesystem.get_themes_dir()
local wp_index = 1
local wp_timeout  = 10
local wp_timer = timer { timeout = wp_timeout }
local wp_path = gears.filesystem.get_configuration_dir() .. "/../../wallpaper/"
local wp_paths = {}

local rotate = function(s)
    gears.wallpaper.maximized(wp_paths[wp_index], s, true)
    -- gears.wallpaper.maximized("/home/isaac/wallpaper/04091_hafencityhamburg_2880x1800.jpg", s, true)
end

done = function(stdout, stderr, exitreason, exitcode)
  error("done")
  if exitcode ~= 0 then
    error("No jpg, jpeg, png found in $WALLPAPER")
    return
  end

	local i = 1
	for line in string.gmatch(stdout, "[^\r\n]+") do
		wp_paths[i] = line
    i = i + 1
	end

  error(wp_paths)
end

ret = awful.spawn.easy_async_with_shell("ls -1 $WALLPAPERS | grep -iE '(jpe?g|png)$'", done)
error(ret)

local on_tick = function()
  wp_index = math.random( 1, #wp_files)
  error("jhkl")
end

wp_timer:connect_signal("timeout", on_tick)
wp_timer:start()

return {
    rotate = rotate
}
