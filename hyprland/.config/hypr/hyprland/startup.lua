hl.on("hyprland.start", function()
  -- Bar
  hl.exec_cmd("waybar")

  -- Notification Daemon
  hl.exec_cmd("mako")

  -- Wallpaper
  hl.exec_cmd("hyprpaper")

  -- Night light
  hl.exec_cmd("sunsetr")

  -- Idling
  hl.exec_cmd("hypridle")

  -- Clipboard History
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")

  -- User apps
  hl.exec_cmd("discord")
end)


hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Fix dead keys in Ghostty
hl.env("GTK_IM_MODULE", "ibus")
