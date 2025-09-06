if game.PlaceId == 78771808593634 then
    -- Create temporary GUI message
    local gui = Instance.new("ScreenGui")
    gui.Name = "HearthvapeDetectUI"
    gui.ResetOnSpawn = false

    if syn and syn.protect_gui then
        syn.protect_gui(gui)
    end
    gui.Parent = game:GetService("CoreGui")

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0, 300, 0, 50)
    label.Position = UDim2.new(0.5, -150, 0.1, 0)
    label.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextScaled = true
    label.Font = Enum.Font.GothamBold
    label.Text = "✅ Poison Candy detected"
    label.Parent = gui

    -- Remove message after 4 seconds
    task.delay(4, function()
        gui:Destroy()

        -- Load actual GUI from lowercase modules folder
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vuxlifydev/HearthVape/main/modules/PoisonCandy.lua"))()
    end)
else
    warn("Hearthvape: Wrong game. This script is for Poison Candy.")
end
