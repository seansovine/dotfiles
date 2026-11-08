local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 160
config.initial_rows = 40
config.font_size = 9.0
config.check_for_updates = true

config.color_scheme = 'Classic Dark (base16)'

local act = wezterm.action
config.keys = {
  -- Move current tab to the left with Alt+Shift+{ (or your preferred key combo)
  { key = '{', mods = 'SHIFT|ALT', action = act.MoveTabRelative(-1) },
  -- Move current tab to the right with Alt+Shift+}
  { key = '}', mods = 'SHIFT|ALT', action = act.MoveTabRelative(1) },
}

return config
