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
  size = { 800, 600 }
})
