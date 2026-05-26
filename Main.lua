-- CustomGuiSystem - All-in-one Script
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGuiSystem"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create MainFrame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0.85, 0, 0.85, 0)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local mainFrameCorner = Instance.new("UICorner")
mainFrameCorner.CornerRadius = UDim.new(0, 12)
mainFrameCorner.Parent = mainFrame

local mainFrameAspect = Instance.new("UIAspectRatioConstraint")
mainFrameAspect.AspectRatio = 1.5
mainFrameAspect.Parent = mainFrame

-- Rainbow stroke for MainFrame
local mainStroke = Instance.new("UIStroke")
mainStroke.Thickness = 2
mainStroke.Parent = mainFrame

-- Rainbow animation
task.spawn(function()
	while true do
		for i = 0, 1, 0.01 do
			mainStroke.Color = Color3.fromHSV(i, 1, 1)
			task.wait()
		end
	end
end)

-- Create TitleBar
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 50)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local hubTitle = Instance.new("TextLabel")
hubTitle.Name = "HubTitle"
hubTitle.Size = UDim2.new(0.5, 0, 1, 0)
hubTitle.Position = UDim2.new(0, 20, 0, 0)
hubTitle.BackgroundTransparency = 1
hubTitle.Text = "🎮 Game Hub"
hubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
hubTitle.TextSize = 24
hubTitle.Font = Enum.Font.SourceSansBold
hubTitle.TextXAlignment = Enum.TextXAlignment.Left
hubTitle.Parent = titleBar

local byLabel = Instance.new("TextLabel")
byLabel.Name = "by"
byLabel.Size = UDim2.new(0.3, 0, 1, 0)
byLabel.Position = UDim2.new(0.7, 0, 0, 0)
byLabel.BackgroundTransparency = 1
byLabel.Text = "by FanDr4gonsRoblox01"
byLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
byLabel.TextSize = 16
byLabel.Font = Enum.Font.SourceSans
byLabel.TextXAlignment = Enum.TextXAlignment.Right
byLabel.Parent = titleBar

-- Create LeftColumn
local leftColumn = Instance.new("Frame")
leftColumn.Name = "LeftColumn"
leftColumn.Size = UDim2.new(0.25, 0, 1, -50)
leftColumn.Position = UDim2.new(0, 0, 0, 50)
leftColumn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
leftColumn.BorderSizePixel = 0
leftColumn.Parent = mainFrame

local leftCorner = Instance.new("UICorner")
leftCorner.CornerRadius = UDim.new(0, 0)
leftCorner.Parent = leftColumn

local leftPadding = Instance.new("UIPadding")
leftPadding.PaddingTop = UDim.new(0, 10)
leftPadding.PaddingLeft = UDim.new(0, 10)
leftPadding.PaddingRight = UDim.new(0, 10)
leftPadding.Parent = leftColumn

local leftListLayout = Instance.new("UIListLayout")
leftListLayout.SortOrder = Enum.SortOrder.LayoutOrder
leftListLayout.Padding = UDim.new(0, 8)
leftListLayout.Parent = leftColumn

-- Create Separator
local separator = Instance.new("Frame")
separator.Name = "Separator"
separator.Size = UDim2.new(0, 2, 1, -50)
separator.Position = UDim2.new(0.25, 0, 0, 50)
separator.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
separator.BorderSizePixel = 0
separator.Parent = mainFrame

-- Create RightColumn
local rightColumn = Instance.new("Frame")
rightColumn.Name = "RightColumn"
rightColumn.Size = UDim2.new(0.75, -2, 1, -50)
rightColumn.Position = UDim2.new(0.25, 2, 0, 50)
rightColumn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
rightColumn.BorderSizePixel = 0
rightColumn.Parent = mainFrame

local rightCorner = Instance.new("UICorner")
rightCorner.CornerRadius = UDim.new(0, 0)
rightCorner.Parent = rightColumn

local rightPadding = Instance.new("UIPadding")
rightPadding.PaddingTop = UDim.new(0, 10)
rightPadding.PaddingLeft = UDim.new(0, 10)
rightPadding.PaddingRight = UDim.new(0, 10)
rightPadding.Parent = rightColumn

-- TitleFrame in RightColumn
local titleFrame = Instance.new("Frame")
titleFrame.Name = "TitleFrame"
titleFrame.Size = UDim2.new(1, 0, 0, 40)
titleFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
titleFrame.BorderSizePixel = 0
titleFrame.Parent = rightColumn

local titleFrameCorner = Instance.new("UICorner")
titleFrameCorner.CornerRadius = UDim.new(0, 8)
titleFrameCorner.Parent = titleFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "⚔️ Blox Fruits"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = titleFrame

-- PagesContainer
local pagesContainer = Instance.new("Frame")
pagesContainer.Name = "PagesContainer"
pagesContainer.Size = UDim2.new(1, 0, 1, -50)
pagesContainer.Position = UDim2.new(0, 0, 0, 50)
pagesContainer.BackgroundTransparency = 1
pagesContainer.Parent = rightColumn

-- Helper function to create game buttons
local function createGameButton(name, text, layoutOrder)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Size = UDim2.new(1, 0, 0, 45)
	button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	button.BorderSizePixel = 0
	button.Text = text
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.TextSize = 16
	button.Font = Enum.Font.SourceSans
	button.LayoutOrder = layoutOrder
	button.Parent = leftColumn
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 8)
	corner.Parent = button
	
	return button
end

-- Helper function to create script buttons
local function createScriptButton(name, text, parent, scriptUrl)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Size = UDim2.new(0.45, 0, 0, 50)
	button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	button.BorderSizePixel = 0
	button.Text = text
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.TextSize = 14
	button.Font = Enum.Font.SourceSans
	button.Parent = parent
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 8)
	corner.Parent = button
	
	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(60, 60, 60)
	stroke.Thickness = 1
	stroke.Parent = button
	
	button.MouseButton1Click:Connect(function()
		if scriptUrl then
			local success, result = pcall(function()
				loadstring(game:HttpGet(scriptUrl))()
			end)
			if not success then
				warn("Failed to load script: " .. tostring(result))
			end
		end
	end)
	
	return button
end

-- Create BloxFruitsPage
local bloxFruitsPage = Instance.new("Frame")
bloxFruitsPage.Name = "BloxFruitsPage"
bloxFruitsPage.Size = UDim2.new(1, 0, 1, 0)
bloxFruitsPage.BackgroundTransparency = 1
bloxFruitsPage.Visible = true
bloxFruitsPage.Parent = pagesContainer

-- Add BloxFruits buttons
createScriptButton("QuantumOnyxHub", "Quantum Onyx Hub", bloxFruitsPage, "https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua")
createScriptButton("BlueXHub", "BlueX Hub", bloxFruitsPage, "https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua")
createScriptButton("GravityHub", "Gravity Hub", bloxFruitsPage, "https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua")
createScriptButton("nYaNn", "nYaNn Hub", bloxFruitsPage, nil)
createScriptButton("TeddyHubHop", "Teddy Hub Hop", bloxFruitsPage, nil)

-- Create GrowAGardenPage
local growAGardenPage = Instance.new("Frame")
growAGardenPage.Name = "GrowAGardenPage"
growAGardenPage.Size = UDim2.new(1, 0, 1, 0)
growAGardenPage.BackgroundTransparency = 1
growAGardenPage.Visible = false
growAGardenPage.Parent = pagesContainer

local comingSoon = Instance.new("TextLabel")
comingSoon.Size = UDim2.new(1, 0, 1, 0)
comingSoon.BackgroundTransparency = 1
comingSoon.Text = "🌱 Coming Soon..."
comingSoon.TextColor3 = Color3.fromRGB(150, 150, 150)
comingSoon.TextSize = 24
comingSoon.Font = Enum.Font.SourceSansBold
comingSoon.Parent = growAGardenPage

-- Create game selection buttons
local bloxFruitsBtn = createGameButton("BloxFruits", "⚔️ Blox Fruits", 1)
local growAGardenBtn = createGameButton("GrowAGarden", "🌱 Grow a Garden", 2)

-- Selection logic
local selectedButton = nil
local pageMapping = {
	["BloxFruits"] = {pageName = "BloxFruitsPage", title = "⚔️ Blox Fruits"},
	["GrowAGarden"] = {pageName = "GrowAGardenPage", title = "🌱 Grow a Garden"}
}

local function hideAllPages()
	for _, page in pagesContainer:GetChildren() do
		if page:IsA("Frame") then
			page.Visible = false
		end
	end
end

local function clearSelection()
	if selectedButton then
		local indicator = selectedButton:FindFirstChild("SelectionIndicator")
		if indicator then
			indicator:Destroy()
		end
	end
end

local function setSelection(button)
	clearSelection()
	selectedButton = button
	
	local indicator = Instance.new("Frame")
	indicator.Name = "SelectionIndicator"
	indicator.Size = UDim2.new(0, 4, 1, 0)
	indicator.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
	indicator.BorderSizePixel = 0
	indicator.Parent = button
	
	local indicatorCorner = Instance.new("UICorner")
	indicatorCorner.CornerRadius = UDim.new(0, 2)
	indicatorCorner.Parent = indicator
	
	local mapping = pageMapping[button.Name]
	if mapping then
		titleLabel.Text = mapping.title
		hideAllPages()
		local page = pagesContainer:FindFirstChild(mapping.pageName)
		if page then
			page.Visible = true
		end
	end
end

bloxFruitsBtn.MouseButton1Click:Connect(function()
	setSelection(bloxFruitsBtn)
end)

growAGardenBtn.MouseButton1Click:Connect(function()
	setSelection(growAGardenBtn)
end)

-- Default selection
setSelection(bloxFruitsBtn)

-- Create ToggleButton
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 70, 0, 70)
toggleButton.Position = UDim2.new(0.1, 0, 0.1, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
toggleButton.BorderSizePixel = 1
toggleButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
toggleButton.Text = ""
toggleButton.Parent = screenGui

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 12)
toggleCorner.Parent = toggleButton

local toggleStroke = Instance.new("UIStroke")
toggleStroke.Color = Color3.fromRGB(27, 42, 53)
toggleStroke.Thickness = 2
toggleStroke.Parent = toggleButton

local toggleImage = Instance.new("ImageLabel")
toggleImage.Name = "ImageLabel"
toggleImage.Size = UDim2.new(0.6, 0, 0.6, 0)
toggleImage.Position = UDim2.new(0.2, 0, 0.2, 0)
toggleImage.BackgroundTransparency = 1
toggleImage.Image = "rbxassetid://3926305904" -- Menu icon
toggleImage.Parent = toggleButton

-- Toggle logic
local isVisible = true
toggleButton.MouseButton1Click:Connect(function()
	isVisible = not isVisible
	mainFrame.Visible = isVisible
end)

print("CustomGuiSystem loaded successfully!")
