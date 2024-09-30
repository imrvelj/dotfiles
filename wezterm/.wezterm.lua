local wezterm = require 'wezterm'

return {
  -- ui
  color_scheme = 'Catppuccin Mocha',
  enable_tab_bar = false,
  window_decorations = 'RESIZE',

  -- text
  font = wezterm.font('JetBrains Mono'),
  font_size = 10.0,
  line_height = 1.1,

  -- bind
  keys = {},
  mouse_bindings = {
    {
      event = { Up = { streak = 1, button = 'Left' } },
      mods = 'CTRL',
      action = wezterm.action.OpenLinkAtMouseCursor,
    },
  },
}
