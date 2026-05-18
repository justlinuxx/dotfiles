hl.on("hyprland.start", function()
  -- Neccessary processes
  hl.exec_cmd("waybar")
  hl.exec_cmd("mako")
  hl.exec_cmd("hyprpaper")

  -- User processes
  hl.exec_cmd("discord")
end)

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Fix dead keys in Ghostty
hl.env("GTK_IM_MODULE", "ibus")
