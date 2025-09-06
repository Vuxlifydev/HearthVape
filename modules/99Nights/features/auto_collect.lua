local targets = {
    "Friescrap", "Scrap", "MetalChunk", "Log", "Pelt", "Cloth", "Bone", "Resin",
    "Meat", "Berry", "Carrot", "CookedMeat", "Water", "Fuel", "Junk",
    "Totem", "Key", "FairyItem", "TraderItem"
}

for _, obj in pairs(workspace:GetDescendants()) do
    if table.find(targets, obj.Name) and obj:IsA("BasePart") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, obj, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, obj, 1)
    end
end
