local modules = {
    [16522953236] = "PoisonCandy"
}

local function loadModule(name)
    local url = "https://raw.githubusercontent.com/vuxliydev/Hearthvape/main/Modules/" .. name .. ".lua"
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)
    if not success then
        warn("Hearthvape: Failed to load module - " .. tostring(result))
    end
end

if modules[game.PlaceId] then
    loadModule(modules[game.PlaceId])
else
    warn("Hearthvape: Unsupported game. No module available.")
end
