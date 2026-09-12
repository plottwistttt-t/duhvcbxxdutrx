local Players = game:GetService("Players")

local player = Players.LocalPlayer

local playerGui = player:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")

gui.Parent = playerGui

local window = Instance.new("Frame")

window.Size = UDim2.new(0, 300, 0, 180)

window.Position = UDim2.new(0.5, -150, 0.5, -90)

window.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

window.Parent = gui

local title = Instance.new("TextLabel")
title.Text = "My Script"
title.Parent = window
title.TextSize = 24

local button = Instance.new("TextButton")

button.Parent = window

button.Text = "Change Speed"

button.Size = UDim2.new(0, 200, 0, 40)

button.MouseButton1Click:Connect(function()
    local character = player.Character
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Walkspeed = 50
    print("Button Clicked!")
end)
