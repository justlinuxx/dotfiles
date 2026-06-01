-- LOOK AND FEEL --
hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 10,

    border_size = 2,

    col = {
      active_border = "rgba(ffffffff)",
      inactive_border = "rgba(595959aa)",
    },

    resize_on_border = false,

    allow_tearing = false,

    float_gaps = -1,

    layout = "scrolling",
  },
  decoration = {
    shadow = {
      enabled = false
    },

    -- Change transparency of focused and unfocused windows
    active_opacity = 1,
    inactive_opacity = 1,
  },
  animations = {
    enabled = true,
  },
})
