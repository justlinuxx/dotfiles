-- MONITORS --
hl.monitor({
  output   = "",
  mode     = "preferred",
  position = "auto",
  scale    = "1",
})


-- MISC --
hl.config({
    misc = {
      disable_hyprland_logo = true,
      mouse_move_enables_dpms = true
    },
    ecosystem = {
        enforce_permissions = true
    }
})

hl.permission({ binary = "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", type = "screencopy", mode = "allow" })
hl.permission({ binary = "/usr/bin/hyprlock", type = "screencopy", mode = "allow" })
