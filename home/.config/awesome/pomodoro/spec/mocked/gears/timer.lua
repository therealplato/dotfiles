local timer = function(_)
    return {
        again = function(_, _) return nil end,
        stop = function(_) return nil end,
        connect_signal = function(_, _) return nil end,
    }
end
return timer
