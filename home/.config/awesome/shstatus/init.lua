local awful = require("awful")
local gears = require("gears")
local envprefix = "AWESOME_SH_"
envs = {}
count = 0
loaded = false
local startup_timer = gears.timer { timeout = 2, single_shot=true, autostart=true }
startup_timer:connect_signal("timeout", function() 
  loaded = true
end)

local env_cb = function(stdout, stderr, exitreason, exitcode)
  error("env_cb")
  loaded = true
end

local line_cb = function(line) 
  local l, r
  l,r = string.find(line, envprefix)
  if l == nil or r == nil then
    return
  end
  l,r = string.find(line, "=")
  if l == nil or l == 1 then
    return
  end
  env = string.sub(line, 1, l-1)
  val = string.sub(line, l+1)
  if env == "" or val == "" then
    return
  end
  table.insert(envs, env, val)
  count = count + 1
end

local ee = awful.spawn.with_line_callback("env", {stdout=line_cb, exit=env_cb})

while not loaded do
  awful.spawn("sleep 1")
end

function loader(env, widget)
  if t
end

return loader
