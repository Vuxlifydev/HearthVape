-- Hearthvape: 99 Nights GUI
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/yourUILibrary"))() -- Replace with your preferred UI lib
local Window = Library:CreateWindow("Hearthvape - 99 Nights")

local MainTab = Window:CreateTab("Main")
local CombatTab = Window:CreateTab("Combat")
local UtilityTab = Window:CreateTab("Utility")

-- Auto Collect Toggle
MainTab:CreateToggle("Auto Collect Items", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vuxliydev/Hearthvape-99Nights/main/Modules/99Nights/features/auto_collect.lua"))()
    end
end)

-- Tree Interaction Toggle
MainTab:CreateToggle("Interact with Trees", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vuxliydev/Hearthvape-99Nights/main/Modules/99Nights/features/tree_interact.lua"))()
    end
end)

-- ESP Toggle
UtilityTab:CreateToggle("ESP", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vuxliydev/Hearthvape-99Nights/main/Modules/99Nights/features/esp.lua"))()
    end
end)

-- Teleport Toggle
UtilityTab:CreateButton("Teleport to Campfire", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vuxliydev/Hearthvape-99Nights/main/Modules/99Nights/features/teleport.lua"))()
end)

-- Combat Enhancements
CombatTab:CreateToggle("Kill Aura", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vuxliydev/Hearthvape-99Nights/main/Modules/99Nights/features/combat.lua"))()
    end
end)
