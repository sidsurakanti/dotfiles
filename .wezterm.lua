local wez = require 'wezterm'
local config = wez.config_builder()

config.font_size = 18
config.color_scheme = 'Tokyo Night'
config.initial_rows = 80
config.initial_cols = 160

return config
