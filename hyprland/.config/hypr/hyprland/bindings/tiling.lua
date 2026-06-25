local bind = hl.bind
local mainMod = "SUPER"

bind(mainMod .. " + C", hl.dsp.window.close())

bind(mainMod .. " + M", hl.dsp.exit())
bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
bind(mainMod .. " + P", hl.dsp.window.pseudo())
bind(mainMod .. " + F", hl.dsp.window.fullscreen())


bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

bind(mainMod .. " + SHIFT + H", hl.dsp.layout("swapcol l"))
bind(mainMod .. " + SHIFT + L", hl.dsp.layout("swapcol r"))
bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Workspace bindings
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
  bind(mainMod .. " + ALT + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end

bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

bind(mainMod .. " + Equal", hl.dsp.layout("colresize +conf"))
bind(mainMod .. " + Minus", hl.dsp.layout("colresize -conf"))
