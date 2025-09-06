local Hearthvape = {}

function Hearthvape.init()
    local gui = Instance.new("ScreenGui")
    gui.Name = "PoisonCandyUI"
    gui.ResetOnSpawn = false

    if syn and syn.protect_gui then
        syn.protect_gui(gui)
    end
    gui.Parent = game:GetService("CoreGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 420, 0, 320)
    frame.Position = UDim2.new(0.5, -210, 0.5, -160)
    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    frame.BorderSizePixel = 0
    frame.Parent = gui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0.2, 0)
    title.BackgroundTransparency = 1
    title.Text = "🍬 Poison Candy - Hearthvape"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextScaled = true
    title.Font = Enum.Font.GothamBold
    title.Parent = frame

    -- Add buttons, toggles, and features below
end

return Hearthvape.init()
