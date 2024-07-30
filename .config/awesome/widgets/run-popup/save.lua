local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local gears = require("gears")

local promptfield = wibox.widget.textbox()
local userScreen = awful.screen.focused()
local run_prompt = awful.popup {
	widget = {
		{
			{
				text   = "-- RUN --",
				widget = wibox.widget.textbox,
				font = "Monospace Bold 13",
				align = "center"
			},
			promptfield,
			layout = wibox.layout.fixed.vertical,
		},
		margins = 15,
		widget  = wibox.container.margin,
	},
	bg = beautiful.bg_normal,
	border_color = beautiful.border_focus,
	border_width = 5,
	placement    = awful.placement.centered,
	visible      = false,
	ontop	     = true,

}


function run_prompt:toggle()
	self.visible = true
	if self.visible then
		awful.prompt.run {
			prompt = "",
			text = "",
			bg_cursor = "#ffffff",
			textbox = promptfield,
			exe_callback = function(cmd)
				awful.spawn(cmd) 
			end,
			done_callback = function()
				self.visible = false
			end
		}
	end
end
return run_prompt 
