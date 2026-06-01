-- Ignore maximize requests from windows
hl.window_rule({
  name           = "suppress-maximize-events",
  match          = { class = ".*" },

  suppress_event = "maximize",
})

hl.window_rule({
  name = "discord-to-ws[5]",
  match = {
    class = "discord"
  },
  workspace = "5 silent"
})

hl.window_rule({
  match = {
    class = "cfg.tui.*"
  },
  float = true,
  size = { 1000, 700 }
})

hl.window_rule({
  name = "floating-satty",
  match = {
    title = "satty"
  },
  float = true,
  size = { 1000, 700 }
})

hl.window_rule({
  name = "floating-ninjabrain",
  match = {
    class = "ninjabrainbot-Main"
  },
  no_initial_focus = true,
  float = true,
  move = { 1400, 50 },
  opacity = 0.8,
  suppress_event = "activatefocus activate"
})
