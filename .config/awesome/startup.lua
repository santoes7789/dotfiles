local awful = require("awful")
awful.spawn.with_shell("picom")

-- Setting up capslock key
awful.spawn.with_shell("setxkbmap -option ctrl:nocaps")
