-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

wezterm.on('update-right-status', function(window, pane)
  local date = wezterm.strftime '%Y-%m-%d %H:%M:%S'

  -- Make it italic and underlined
  window:set_right_status(wezterm.format {
    { Attribute = { Underline = 'Single' } },
    { Attribute = { Italic = true } },
    { Text = date },
  })
end)

-- This is where you actually apply your config choices

-- Window behavior and color scheme
config.color_scheme = "Dracula (Official)"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.adjust_window_size_when_changing_font_size = false

-- Font configuration
config.font_size = 12
config.font =c
  wezterm.font('JetBrains Mono', { weight = 'Bold' })
-- config.harfbuzz_features = {"zero" , "ss01", "cv05"}

-- Background beautify
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
config.text_background_opacity = 1

-- and finally, return the configuration to wezterm
return config