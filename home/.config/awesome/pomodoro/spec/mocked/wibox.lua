local wibox = {
    widget = {
        textbox = function()
            return {
                emit_signal = function(_, _) return nil end,
                connect_signal = function(_, _) return nil end,
                set_markup = function(_, _) return nil end,
                buttons = function(_, _) return nil end,
            }
        end
    }
}

return wibox
