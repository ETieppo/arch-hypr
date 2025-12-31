local wezterm         = require 'wezterm'
local config          = wezterm.config_builder()
local act             = wezterm.action

config.enable_wayland = false
config.font           = wezterm.font("JetBrainsMono Nerd Font")

config.keys           = config.keys or {
  -- você pode ter outros binds aqui
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

-- command + o -> manda ctrl + o pro nano (Write Out / salvar)
table.insert(config.keys, {
  key = 'o',
  mods = 'SUPER',
  action = act.SendKey { key = 'o', mods = 'CTRL' },
})

-- command + x -> manda ctrl + x pro nano (Exit / sair)
table.insert(config.keys, {
  key = 'x',
  mods = 'SUPER',
  action = act.SendKey { key = 'x', mods = 'CTRL' },
})


return config
