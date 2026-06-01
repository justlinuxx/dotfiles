local mainMod = "SUPER"
local bind = hl.bind

-- Apps
local terminal = "ghostty"
local menu = "fuzzel"
local fileManager = "nautilus"
local browser = "zen-browser"

bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu)) -- Apps Menu

bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))

bind(mainMod .. " + Escape", hl.dsp.exec_cmd("cfg-menu-system"))

-- TUIs
bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("cfg-launch-tui impala"))
bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd("cfg-launch-tui bluetui"))
bind(mainMod .. " + CTRL + A", hl.dsp.exec_cmd("cfg-launch-tui wiremix -v output"))
