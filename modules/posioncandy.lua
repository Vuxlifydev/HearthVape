-- Hearthvape: Poison Candy Module
local Hearthvape = {}

-- GUI Setup
local function createGUI()
    local gui = Instance.new("ScreenGui")
    gui.Name = "HearthvapeUI"
    gui.ResetOnSpawn = false
    gui.Parent = game:GetService("CoreGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 420, 0, 320)
    frame.Position = UDim2.new(0.5, -210, 0.5, -160)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    frame.BorderSizePixel = 0
    frame.Parent = gui

    -- Add your Poison Candy-specific GUI elements here
end

-- Feature Logic
local function autoCollectCandy()
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name == "Candy" and v:IsA("TouchTransmitter") then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
        end
    end
end

local function removeEnemies()
    for _, v in pairs(workspace:GetChildren()) do
        if v.Name == "Enemy" then
            v:Destroy()
        end
    end
end

function Hearthvape.init()
    createGUI()
    autoCollectCandy()
    removeEnemies()
    -- Add more Poison Candy features here
end

return Hearthvape.init()
