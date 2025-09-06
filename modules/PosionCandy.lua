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

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = frame

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -40, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "🍬 Poison Candy - Hearthvape"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextScaled = true
    title.Font = Enum.Font.GothamBold
    title.Parent = frame

    local close = Instance.new("TextButton")
    close.Size = UDim2.new(0, 40, 0, 40)
    close.Position = UDim2.new(1, -40, 0, 0)
    close.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    close.Text = "✕"
    close.TextColor3 = Color3.fromRGB(255, 255, 255)
    close.TextScaled = true
    close.Font = Enum.Font.GothamBold
    close.Parent = frame

    local closeCorner = Instance.new("UICorner")
    closeCorner.CornerRadius = UDim.new(0, 8)
    closeCorner.Parent = close

    close.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)

    local featureBtn = Instance.new("TextButton")
    featureBtn.Size = UDim2.new(0.6, 0, 0, 40)
    featureBtn.Position = UDim2.new(0.2, 0, 0.5, 0)
    featureBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    featureBtn.Text = "🔧 Feature Placeholder"
    featureBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    featureBtn.TextScaled = true
    featureBtn.Font = Enum.Font.Gotham
    featureBtn.Parent = frame

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 8)
    btnCorner.Parent = featureBtn
end

return Hearthvape.init()
