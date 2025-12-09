local wezterm         = require 'wezterm'
local config          = wezterm.config_builder()
local act             = wezterm.action

config.enable_wayland = false

config.keys           = config.keys or {

}

-- command + c
table.insert(config.keys, {
  key = 'c',
  mods = 'CTRL',
  action = act.CopyTo 'Clipboard',
})

table.insert(config.keys, {
  key = 'c',
  mods = 'SUPER',
  action = act.SendKey { key = 'c', mods = 'CTRL' },
})

-- command + v
table.insert(config.keys, {
  key = 'v',
  mods = 'CTRL',
  action = act.PasteFrom 'Clipboard',
})

table.insert(config.keys, {
  key = 'v',
  mods = 'SUPER',
  action = act.SendKey { key = 'v', mods = 'CTRL' },
})

-- command + n
table.insert(config.keys, {
  key = 'n',
  mods = 'CTRL',
  action = act.SpawnWindow,
})

table.insert(config.keys, {
  key = 'n',
  mods = 'SUPER',
  action = act.SendKey { key = 'n', mods = 'CTRL' },
})

-- ctrl + o
table.insert(config.keys, {
  key = 'o',
  mods = 'SUPER',
  action = act.SendKey { key = 'o', mods = 'CTRL' },
})

-- ctrl + x
table.insert(config.keys, {
  key = 'x',
  mods = 'SUPER',
  action = act.SendKey { key = 'x', mods = 'CTRL' },
})


return config
