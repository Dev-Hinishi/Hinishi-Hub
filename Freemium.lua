local repo = "https://raw.githubusercontent.com/Dev-Hinishi/Hinishi-Hub/refs/heads/main/"
local env = getgenv() or getrenv() or getfenv()
if env.rz_execute_debounce and tick() - env.rz_execute_debounce <= 5 then return nil end
env.rz_execute_debounce = tick()
if not env.rz_added_teleport_queue and (queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)) then
    env.rz_added_teleport_queue = true
    local q = queue_on_teleport or syn.queue_on_teleport or fluxus.queue_on_teleport
    pcall(q, "loadstring(game:HttpGet('" .. repo .. "Freemium.lua'))(...)")
end
if game.GameId == 994732206 then
    loadstring(game:HttpGet(repo .. "Games/BloxFruits.luau"))()
end
