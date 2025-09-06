-- Basic ESP overlay
for _, v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("Humanoid") then
        local billboard = Instance.new("BillboardGui", v)
        billboard.Size = UDim2.new(0, 100, 0, 40)
        billboard.AlwaysOnTop = true
        local label = Instance.new("TextLabel", billboard)
        label.Text = v.Name
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.new(1, 0, 0)
    end
end
