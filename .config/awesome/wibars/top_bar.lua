local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local battery_widget = require("widgets.battery-widget.battery")
local volume_widget = require("widgets.volume-widget.volume")
local layout_widget = require("widgets.layout-widget.layoutbox")
local taglist_widget = require("widgets.taglist-widget.taglist")

awful.screen.connect_for_each_screen(function(s)
    --Adding taglist to each screen
    s.taglist = taglist_widget.create(s)

    local top_bar = awful.wibar({ position = "top", screen = s })
    top_bar:setup {
        layout = wibox.layout.align.horizontal,
        expand = "none",
        { -- Left widgets
            spacing = 10, 
            layout = wibox.layout.fixed.horizontal,
            s.taglist
        },
        wibox.widget.textclock(),
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal, spacing = 10, 
            wibox.widget.systray(),
            layout_widget,
            volume_widget { widget_type = "icon"},
            battery_widget { display_notification = true } 
        },
    }
end)
