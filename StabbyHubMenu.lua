local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local cheatMenuGui = Instance.new("ScreenGui")
cheatMenuGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 300)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = cheatMenuGui

local speedButton = Instance.new("TextButton")
speedButton.Size = UDim2.new(0, 180, 0, 40)
speedButton.Position = UDim2.new(0, 10, 0, 10)
speedButton.Text = "Toggle Speed"
speedButton.Parent = frame

local jumpButton = Instance.new("TextButton")
jumpButton.Size = UDim2.new(0, 180, 0, 40)
jumpButton.Position = UDim2.new(0, 10, 0, 60)
jumpButton.Text = "Toggle Jump Power"
jumpButton.Parent = frame

local godModeButton = Instance.new("TextButton")
godModeButton.Size = UDim2.new(0, 180, 0, 40)
godModeButton.Position = UDim2.new(0, 10, 0, 110)
godModeButton.Text = "Toggle God Mode"
godModeButton.Parent = frame

-- Making the menu movable
local dragging = false
local dragInput, dragStart, startPos

local function updatePosition(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
    end
end)

frame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        updatePosition(input)
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

speedButton.MouseButton1Click:Connect(function()
end)

jumpButton.MouseButton1Click:Connect(function()
end)

godModeButton.MouseButton1Click:Connect(function()
end)
