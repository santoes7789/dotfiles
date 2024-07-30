------------------
-- Requirements --
------------------
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local theme_assets = require("beautiful.theme_assets")
local src = require("themes.night_city")
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
--local decorations = require("decorations")

local layout_icons_dir = "~/.config/awesome/widgets/layout-widget/layout_icons/" 
-- Theme table --
local theme = {}

-- Theme font --
theme.font = "sans 9"

-- Wallpaper --
theme.wallpaper = src.wallpaper

-- Windows --
theme.bg_normal = src.bg_1 
theme.bg_focus = src.accent_2 
theme.bg_urgent = src.red_2 
theme.bg_minimize = src.bg_2 
theme.bg_systray = src.bg_1

theme.fg_normal = src.fg_1 
theme.fg_focus = src.fg_1
theme.fg_urgent = src.fg_1
theme.fg_minimize = src.fg_1

-- Borders -- 
theme.useless_gap = dpi(5)
theme.border_width = dpi(1)
theme.border_normal	= "#000000"
theme.border_focus = "#535d6c"
theme.border_marked = "91231c"

-- Titlebars --
theme.titlebar_bg_focus = src.bg_1 
theme.titlebar_bg_normal = src.bg_1


-- Taglist small squares --
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.layout_fairh		= layout_icons_dir.."fairhw.png"
theme.layout_fairv		= layout_icons_dir.."fairvw.png"
theme.layout_floating	= layout_icons_dir.."floatingw.png"
theme.layout_magnifier	= layout_icons_dir.."magnifierw.png"
theme.layout_max		= layout_icons_dir.."maxw.png"
theme.layout_fullscreen = layout_icons_dir.."fullscreenw.png"
theme.layout_tilebottom = layout_icons_dir.."tilebottomw.png"
theme.layout_tileleft   = layout_icons_dir.."tileleftw.png"
theme.layout_tile		= layout_icons_dir.."tilew.png"
theme.layout_tiletop	= layout_icons_dir.."tiletopw.png"
theme.layout_spiral		= layout_icons_dir.."spiralw.png"
theme.layout_dwindle	= layout_icons_dir.."dwindlew.png"
theme.layout_cornernw	= layout_icons_dir.."cornernww.png"
theme.layout_cornerne	= layout_icons_dir.."cornernew.png"
theme.layout_cornersw	= layout_icons_dir.."cornersww.png"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."default/titlebar/maximized_focus_active.png"
theme.layout_cornerse	= layout_icons_dir.."cornersew.png"
-- Init --
require("beautiful").init(theme)
