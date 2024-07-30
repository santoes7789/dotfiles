local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local gears = require("gears")

local screenGeo = awful.screen.focused().geometry

local promptfield = wibox.widget.textbox()

local run_prompt_width = 200
local run_prompt_height = 100 
local run_prompt = wibox.widget  {
	{
		{
			{
				text   = "RUN",
				widget = wibox.widget.textbox,
				font = "sans 16",
				align = "center",
			},
			promptfield,
			layout = wibox.layout.fixed.vertical,
			spacing = 8 
		},
		margins = 20,
		widget = wibox.container.margin
	},

	forced_width = run_prompt_width,
	forced_height = run_prompt_height,
	bg = beautiful.bg_focus,
	fg = beautiful.fg_focus,
    shape = gears.shape.rounded_rect,
	widget = wibox.container.background,
	point = {x = (screenGeo.width - run_prompt_width)/2, y = (screenGeo.height - run_prompt_height)/2},
}
local popup = wibox({
	x = 0,
	y = 0,
	width = screenGeo.width,
	height = screenGeo.height,
	ontop = true,
	visible = false,
	bg = "#00000011",
    type = "popup_menu"
})

popup:setup {
	run_prompt,
	layout = wibox.layout.manual,
}

function popup:show()
	self.visible = true 
	if self.visible then
		awful.prompt.run {
			prompt = "",
			text = "",
			bg_cursor = "#ffffff",
			textbox = promptfield,
            font = "sans 10",
			exe_callback = function(cmd)
				awful.spawn(cmd) 
			end,
			done_callback = function()
				self.visible = false
			end
	}
	end
end
return popup 
