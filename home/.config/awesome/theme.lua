---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "inconsolata 8"

-- 4th word is opacity, default FF
theme.transparent   = "#00000000"
theme.black         = "#000000"
theme.grey8         = "#888888"
theme.shaded        = "#000000AA"
theme.yellow        = "#FFD400"
theme.orange        = "#F57B00"
theme.orange2       = "#FFD400"
theme.red           = "#EB3C00"
theme.green         = "#3CEB00"

theme.bg_normal     = theme.transparent
theme.bg_focus      = theme.transparent
theme.bg_urgent     = theme.yellow
theme.bg_minimize   = theme.transparent

theme.fg_normal     = theme.grey8
theme.fg_focus      = theme.yellow
theme.fg_urgent     = theme.black
theme.fg_minimize   = theme.red

theme.border_normal = theme.orange
theme.border_width  = 0

-- x draws systray bad e.g. no transparency and/or scaling issues
theme.bg_systray    = theme.transparent

theme.taglist_bg_normal = theme.transparent
-- theme.taglist_bg_focus = theme.transparent
theme.taglist_fg_empty = theme.grey8
-- theme.taglist_fg_focus = theme.orange
theme.taglist_fg_occupied = theme.orange
-- theme.taglist_fg_volatile = theme.yellow

-- theme.tasklist_bg_focus = theme.shaded
-- theme.tasklist_bg_normal = theme.transparent
theme.tasklist_fg_focus = theme.orange

theme.tooltip_fg_color = theme.orange
theme.tooltip_bg_color = theme.shaded

theme.notification_fg = theme.orange
theme.notification_bg = theme.shaded
theme.notification_margin = dpi(10)

theme.useless_gap = dpi(3)

theme.hotkeys_bg = theme.shaded
theme.hotkeys_modifiers_fg = theme.orange
-- [bg
-- fg
-- border_width
-- border_color
-- shape
-- opacity
-- modifiers_fg
-- label_bg
-- label_fg
-- group_margin
-- font
-- description_font
-- ]

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Generate taglist squares:
-- local taglist_square_size = dpi(4)
-- theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
--     taglist_square_size, theme.transparent
-- )
-- theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
--     taglist_square_size, theme.fg_normal
-- )

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
