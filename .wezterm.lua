-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Window behavior and color scheme
config.color_scheme = "Dracula (Official)"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.adjust_window_size_when_changing_font_size = false

-- Font configuration
config.font_size = 16
config.font = wezterm.font 'Fira Code'
config.harfbuzz_features = {"zero" , "ss01", "cv05"}

-- Background beautify
config.window_background_opacity = 0.2
config.macos_window_background_blur = 50
config.text_background_opacity = 1

-- and finally, return the configuration to wezterm
return config