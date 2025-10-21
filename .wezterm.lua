local wez = require("wezterm")
local config = wez.config_builder()

config.font_size = 18
config.color_scheme = "Tokyo Night"
config.initial_rows = 35
config.initial_cols = 156
config.line_height = 1.15

config.automatically_reload_config = true

config.use_fancy_tab_bar = false
config.window_background_opacity = 0.965
config.macos_window_background_blur = 10
config.window_background_image = "/Users/sidsurakanti/dotfiles/wallpapers/nightcity.jpg"
config.window_background_image_hsb = {
	brightness = 0.05,
	saturation = 1.2,
}
config.window_padding = { left = 0, right = 0, top = 30, bottom = 10 }
config.window_decorations = "NONE"
config.tab_bar_at_bottom = true

config.keys = {
	{
		key = "n",
		mods = "SUPER|SHIFT",
		action = wez.action.ToggleFullScreen,
	},
}

return config
