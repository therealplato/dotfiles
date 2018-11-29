local awful = {
    util = {
        getdir = function(_) return '/home/cooluser/.config/awesome' end,
        table = {
            join = function(_) return nil end
        }
    },
    spawn = {
        pread = function(_) return "" end,
    },
    button = function(_, _, _) return nil end,
    tooltip = function(_) return nil end
}

return awful
