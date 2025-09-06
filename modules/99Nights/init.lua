-- Hearthvape: 99 Nights Module Loader
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Executor detection (optional)
local executor = identifyexecutor and identifyexecutor() or "Unknown"

-- Load GUI
local success, guiModule = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/vuxliydev/Hearthvape-99Nights/main/Modules/99Nights/gui.lua"))()
end)

if not success then
    warn("Failed to load GUI:", guiModule)
end
