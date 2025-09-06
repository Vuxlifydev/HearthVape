local locations = {
    Campfire = Vector3.new(100, 5, -200),
    Trader = Vector3.new(-50, 3, 120)
}
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(locations["Campfire"])
