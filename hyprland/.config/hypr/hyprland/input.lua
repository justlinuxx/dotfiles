-- INPUT --
hl.config({
  input = {
    kb_layout     = "us,sk",
    kb_variant    = ",qwerty",
    kb_model      = "",
    kb_options    = "grp:alts_toggle, caps:none",
    kb_rules      = "",

    follow_mouse  = 1,
    accel_profile = "flat",

    sensitivity   = 0,

    touchpad      = {
      natural_scroll = true,
    },
  },
})


-- GESTURES --
hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "scroll_move"
})

hl.gesture({
  fingers = 4,
  direction = "horizontal",
  action = "workspace"
})
