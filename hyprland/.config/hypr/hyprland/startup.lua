hl.on("hyprland.start", function()
	-- Bar
	hl.exec_cmd("waybar")

	-- Notification Daemon
	hl.exec_cmd("mako")

	-- Terminal
	hl.exec_cmd("foot --server")

	-- Wallpaper
	hl.exec_cmd("swaybg -i ~/Pictures/Wallpapers/default.jpg")

	-- Night light
	hl.exec_cmd("hyprsunset")

	-- Idling
	hl.exec_cmd("hypridle")

	-- Clipboard History
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")

	-- User apps
	hl.exec_cmd("niri-screen-time -daemon")

	hl.exec_cmd("footclient nvim ~/Documents/notes.txt")

	-- Set Theme
	hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme prefer-dark")
end)

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

