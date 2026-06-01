local bind = hl.bind
local mainMod = "SUPER"

bind("Print", hl.dsp.exec_cmd("cfg-screenshot"))
bind(mainMod .. " + CTRL + L", hl.dsp.exec_cmd("hyprlock"))

bind(mainMod .. " + CTRL + V", hl.dsp.exec_cmd("cliphist list | fuzzel --dmenu --with-nth 2 | cliphist decode | wl-copy"))
