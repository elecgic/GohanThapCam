-- CustomGuiSystem LocalScript
-- Tạo và quản lý GUI system cho player

local Players = game:GetService("Players")
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tạo ScreenGui mới
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGuiSystem"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 100
screenGui.IgnoreGuiInset = false
screenGui.Parent = PlayerGui

-- Tạo MainFrame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0.3, 0, 0.4, 0)
mainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Thêm UICorner cho MainFrame
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 12)
mainCorner.Parent = mainFrame

-- Tạo Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0.15, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Text = "Custom GUI System"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 20
titleLabel.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = titleLabel

-- Tạo ToggleButton
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0.8, 0, 0.12, 0)
toggleButton.Position = UDim2.new(0.1, 0, 0.25, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Text = "Toggle Feature"
toggleButton.Font = Enum.Font.GothamSemibold
toggleButton.TextSize = 16
toggleButton.Parent = mainFrame

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 8)
toggleCorner.Parent = toggleButton

-- Tạo CloseButton
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0.1, 0, 0.08, 0)
closeButton.Position = UDim2.new(0.88, 0, 0.02, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 18
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeButton

-- Tạo nút mở GUI (nếu GUI bị đóng)
local openButton = Instance.new("TextButton")
openButton.Name = "OpenButton"
openButton.Size = UDim2.new(0, 150, 0, 40)
openButton.Position = UDim2.new(0, 10, 0.5, -20)
openButton.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
openButton.TextColor3 = Color3.fromRGB(255, 255, 255)
openButton.Text = "Open GUI"
openButton.Font = Enum.Font.GothamSemibold
openButton.TextSize = 16
openButton.Visible = false
openButton.Parent = screenGui

local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(0, 8)
openCorner.Parent = openButton

-- Xử lý sự kiện Toggle
local isToggled = false
toggleButton.MouseButton1Click:Connect(function()
	isToggled = not isToggled
	if isToggled then
		toggleButton.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
		toggleButton.Text = "Feature: ON"
		print("Feature activated!")
	else
		toggleButton.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
		toggleButton.Text = "Feature: OFF"
		print("Feature deactivated!")
	end
end)

-- Xử lý sự kiện Close
closeButton.MouseButton1Click:Connect(function()
	mainFrame.Visible = false
	openButton.Visible = true
end)

-- Xử lý sự kiện Open
openButton.MouseButton1Click:Connect(function()
	mainFrame.Visible = true
	openButton.Visible = false
end)

-- Kéo thả GUI (Draggable)
local dragging = false
local dragInput = nil
local dragStart = nil
local startPos = nil

titleLabel.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = mainFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

titleLabel.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

print("CustomGuiSystem loaded successfully!")
