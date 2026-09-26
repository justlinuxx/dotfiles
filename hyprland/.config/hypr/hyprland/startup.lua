hl.on("hyprland.start", function()
    -- Shell
    hl.exec_cmd("quickshell")

    hl.exec_cmd("quickshell -p ~/.config/quickshell/Notifications.qml")

    -- Terminal
    hl.exec_cmd("foot --server")

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
    hl.exec_cmd("niri-screen-time -daemon")

    hl.exec_cmd("ghostty +new-window -e xdg-open ~/Documents/notes.txt")

    -- Set Theme
    hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme prefer-dark") 
end)



hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Fix dead keys in Ghostty
hl.env("GTK_IM_MODULE", "ibus")
