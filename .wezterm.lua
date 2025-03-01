local wez = require 'wezterm'
local config = wez.config_builder()

config.font_size = 18
config.color_scheme = 'Tokyo Night'
config.initial_rows = 40
config.initial_cols = 160

config.automatically_reload_config = true

config.use_fancy_tab_bar = false
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
config.window_padding = { left = 0, right = 0, top = 40, bottom = 10 }
config.window_decorations = "NONE"
config.tab_bar_at_bottom = true

config.keys = {
  {
    key = 'n',
    mods = 'SUPER|SHIFT',
    action = wez.action.ToggleFullScreen,
  },
}

return config
