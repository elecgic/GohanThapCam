local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Helper function để tạo instance
local function createInstance(className, properties)
	local instance = Instance.new(className)
	for prop, value in pairs(properties) do
		instance[prop] = value
	end
	return instance
end

-- ===== SCREENGUI =====
local screenGui = createInstance("ScreenGui", {
	Name = "CustomGuiSystem",
	ResetOnSpawn = false,
	IgnoreGuiInset = false,
	DisplayOrder = 0,
	Enabled = true,
	ZIndexBehavior = Enum.ZIndexBehavior.Global,
	ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets,
	SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension,
	ClipToDeviceSafeArea = true,
	AutoLocalize = true,
	Parent = playerGui
})

-- ===== TOGGLE BUTTON =====
local toggleButton = createInstance("TextButton", {
	Name = "ToggleButton",
	Size = UDim2.new(0, 70, 0, 70),
	Position = UDim2.new(0.105128206, 0, 0.102604173, 0),
	BackgroundColor3 = Color3.fromRGB(30, 30, 30),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 1,
	Text = "",
	Active = true,
	AutoButtonColor = true,
	Selectable = true,
	Parent = screenGui
})

local toggleCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 15),
	Parent = toggleButton
})

local toggleStroke = createInstance("UIStroke", {
	Color = Color3.fromRGB(255, 235, 0),
	Thickness = 1.5,
	Parent = toggleButton
})

local toggleImage = createInstance("ImageLabel", {
	Name = "ImageLabel",
	Size = UDim2.new(1.07142854, 0, 1.1, 0),
	Position = UDim2.new(0, 0, -0.1, 0),
	BackgroundTransparency = 1,
	Image = "rbxassetid://79544588720132",
	ImageColor3 = Color3.new(1, 1, 1),
	ScaleType = Enum.ScaleType.Fit,
	Parent = toggleButton
})

-- ===== MAIN FRAME =====
local mainFrame = createInstance("Frame", {
	Name = "MainFrame",
	Size = UDim2.new(0.85, 0, 0.85, 0),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.fromRGB(21, 21, 21),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Parent = screenGui
})

local mainCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 15),
	Parent = mainFrame
})

local mainAspectRatio = createInstance("UIAspectRatioConstraint", {
	AspectRatio = 1.25,
	AspectType = Enum.AspectType.FitWithinMaxSize,
	DominantAxis = Enum.DominantAxis.Width,
	Parent = mainFrame
})

local mainStroke = createInstance("UIStroke", {
	Color = Color3.new(0, 0, 0),
	Thickness = 3,
	Parent = mainFrame
})

-- Rainbow stroke effect
spawn(function()
	while true do
		for i = 0, 1, 0.01 do
			mainStroke.Color = Color3.fromHSV(i, 1, 1)
			task.wait()
		end
	end
end)

-- ===== TITLE BAR =====
local titleBar = createInstance("Frame", {
	Name = "TitleBar",
	Size = UDim2.new(1, 0, 0, 45),
	Position = UDim2.new(0, 0, 0, 0),
	BackgroundTransparency = 1,
	BackgroundColor3 = Color3.fromRGB(25, 25, 25),
	Parent = mainFrame
})

local hubTitle = createInstance("TextLabel", {
	Name = "HubTitle",
	Size = UDim2.new(1, -20, 1, 0),
	Position = UDim2.new(0, 9, 0, 7),
	BackgroundTransparency = 0,
	BackgroundColor3 = Color3.fromRGB(21, 21, 21),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Text = "   Gohan Hub",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 22,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
	Parent = titleBar
})

local byLabel = createInstance("TextLabel", {
	Name = "by",
	Size = UDim2.new(0, 200, 0, 50),
	Position = UDim2.new(0.106617644, 0, 0.155555561, 0),
	BackgroundTransparency = 1,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BorderColor3 = Color3.fromRGB(72, 72, 72),
	Text = "by elecgic",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	Font = Enum.Font.SourceSans,
	TextXAlignment = Enum.TextXAlignment.Center,
	Parent = titleBar
})

-- ===== LEFT COLUMN =====
local leftColumn = createInstance("Frame", {
	Name = "LeftColumn",
	Size = UDim2.new(0.219739825, -2, 1, -45),
	Position = UDim2.new(0, 9, 0, 45),
	BackgroundColor3 = Color3.fromRGB(21, 21, 21),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Parent = mainFrame
})

local leftCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 15),
	Parent = leftColumn
})

local leftPadding = createInstance("UIPadding", {
	PaddingTop = UDim.new(0, 25),
	PaddingBottom = UDim.new(0, 25),
	PaddingLeft = UDim.new(0, 5),
	PaddingRight = UDim.new(0, 25),
	Parent = leftColumn
})

local leftListLayout = createInstance("UIListLayout", {
	SortOrder = Enum.SortOrder.Name,
	Padding = UDim.new(0, 15),
	HorizontalAlignment = Enum.HorizontalAlignment.Left,
	VerticalAlignment = Enum.VerticalAlignment.Top,
	Parent = leftColumn
})

-- ===== SEPARATOR =====
local separator = createInstance("Frame", {
	Name = "Separator",
	Size = UDim2.new(0.0012254715, 2, 0.934469581, -45),
	Position = UDim2.new(0.229543731, -1, 0, 45),
	BackgroundColor3 = Color3.new(1, 1, 1),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Parent = mainFrame
})

-- ===== RIGHT COLUMN =====
local rightColumn = createInstance("Frame", {
	Name = "RightColumn",
	Size = UDim2.new(0.755750477, -2, 1, -45),
	Position = UDim2.new(0.230769143, 2, 0, 45),
	BackgroundColor3 = Color3.fromRGB(21, 21, 21),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Parent = mainFrame
})

local rightCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 10),
	Parent = rightColumn
})

local rightPadding = createInstance("UIPadding", {
	PaddingTop = UDim.new(0, 25),
	PaddingBottom = UDim.new(0, 25),
	PaddingLeft = UDim.new(0, 25),
	PaddingRight = UDim.new(0, 25),
	Parent = rightColumn
})

-- ===== TITLE FRAME =====
local titleFrame = createInstance("Frame", {
	Name = "TitleFrame",
	Size = UDim2.new(1, 0, 0, 40),
	Position = UDim2.new(0, 0, 0, 0),
	BackgroundTransparency = 1,
	BackgroundColor3 = Color3.fromRGB(20, 20, 20),
	Parent = rightColumn
})

local titleFrameCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 8),
	Parent = titleFrame
})

local titleLabel = createInstance("TextLabel", {
	Name = "TitleLabel",
	Size = UDim2.new(1, -20, 1, 0),
	Position = UDim2.new(0, 9, 0, -29),
	BackgroundTransparency = 1,
	BackgroundColor3 = Color3.fromRGB(163, 162, 165),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	Text = "Select a game",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 18,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
	Parent = titleFrame
})

-- ===== PAGES CONTAINER =====
local pagesContainer = createInstance("Frame", {
	Name = "PagesContainer",
	Size = UDim2.new(1, 0, 1, -50),
	Position = UDim2.new(0, 0, 0, 50),
	BackgroundTransparency = 1,
	BackgroundColor3 = Color3.fromRGB(163, 162, 165),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	Parent = rightColumn
})

-- ===== BLOX FRUITS PAGE =====
local bloxFruitsPage = createInstance("Frame", {
	Name = "BloxFruitsPage",
	Size = UDim2.new(1, 0, 1, 0),
	Position = UDim2.new(0, 0, 0, 0),
	BackgroundTransparency = 1,
	BackgroundColor3 = Color3.fromRGB(163, 162, 165),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	Visible = false,
	Parent = pagesContainer
})

-- ===== GROW A GARDEN PAGE =====
local growAGardenPage = createInstance("Frame", {
	Name = "GrowAGardenPage",
	Size = UDim2.new(1, 0, 1, 0),
	Position = UDim2.new(0, 0, 0, 0),
	BackgroundTransparency = 1,
	BackgroundColor3 = Color3.fromRGB(163, 162, 165),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	Visible = false,
	Parent = pagesContainer
})

-- ===== MENU BUTTON: BLOX FRUITS =====
local bloxFruitsBtn = createInstance("TextButton", {
	Name = "BloxFruits",
	Size = UDim2.new(1, 18, 0, 45),
	Position = UDim2.new(0, -5, 0, 0),
	BackgroundColor3 = Color3.fromRGB(30, 30, 30),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Text = "⚔️ Blox Fruits",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 16,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Center,
	Active = true,
	AutoButtonColor = true,
	Selectable = true,
	Parent = leftColumn
})

local bloxFruitsCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 10),
	Parent = bloxFruitsBtn
})

-- ===== MENU BUTTON: GROW A GARDEN =====
local growAGardenBtn = createInstance("TextButton", {
	Name = "GrowAGarden",
	Size = UDim2.new(1, 18, 0, 45),
	Position = UDim2.new(0, -5, 0, 0),
	BackgroundColor3 = Color3.fromRGB(30, 30, 30),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Text = "🌱 Grow a Garden",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 16,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Center,
	Active = true,
	AutoButtonColor = true,
	Selectable = true,
	Parent = leftColumn
})

local growAGardenCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 10),
	Parent = growAGardenBtn
})

-- ===== HUB BUTTON: QUANTUM ONYX HUB =====
local quantumOnyxHub = createInstance("TextButton", {
	Name = "QuantumOnyxHub",
	Size = UDim2.new(1, 0, 0, 45),
	Position = UDim2.new(0, 0, 0, -25),
	BackgroundColor3 = Color3.fromRGB(30, 30, 30),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Text = "   QuantumOnyx Hub",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 16,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
	Active = true,
	AutoButtonColor = true,
	Selectable = true,
	Parent = bloxFruitsPage
})

local quantumOnyxCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 6),
	Parent = quantumOnyxHub
})

local quantumOnyxStroke = createInstance("UIStroke", {
	Color = Color3.fromRGB(60, 60, 60),
	Thickness = 1,
	Parent = quantumOnyxHub
})

quantumOnyxHub.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
end)

-- ===== HUB BUTTON: BLUE X HUB =====
local blueXHub = createInstance("TextButton", {
	Name = "BlueXHub",
	Size = UDim2.new(1, 0, 0, 45),
	Position = UDim2.new(0, 0, 0, 35),
	BackgroundColor3 = Color3.fromRGB(30, 30, 30),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Text = "    Blue X Hub",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 16,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
	Active = true,
	AutoButtonColor = true,
	Selectable = true,
	Parent = bloxFruitsPage
})

local blueXCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 8),
	Parent = blueXHub
})

local blueXStroke = createInstance("UIStroke", {
	Color = Color3.fromRGB(50, 50, 50),
	Thickness = 1,
	Parent = blueXHub
})

blueXHub.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
end)

-- ===== HUB BUTTON: GRAVITY HUB =====
local gravityHub = createInstance("TextButton", {
	Name = "GravityHub",
	Size = UDim2.new(1, 0, 0, 45),
	Position = UDim2.new(0, 0, 0, 95),
	BackgroundColor3 = Color3.fromRGB(30, 30, 30),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Text = "    Gravity Hub",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 16,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
	Active = true,
	AutoButtonColor = true,
	Selectable = true,
	Parent = bloxFruitsPage
})

local gravityCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 8),
	Parent = gravityHub
})

local gravityStroke = createInstance("UIStroke", {
	Color = Color3.fromRGB(50, 50, 50),
	Thickness = 1,
	Parent = gravityHub
})

gravityHub.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
end)

-- ===== HUB BUTTON: NYANN HUB =====
local nYaNn = createInstance("TextButton", {
	Name = "nYaNn",
	Size = UDim2.new(1, 0, 0, 45),
	Position = UDim2.new(0, 0, 0, 155),
	BackgroundColor3 = Color3.fromRGB(30, 30, 30),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Text = "    nYaNn Hub",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 16,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
	Active = true,
	AutoButtonColor = true,
	Selectable = true,
	Parent = bloxFruitsPage
})

local nYaNnCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 8),
	Parent = nYaNn
})

local nYaNnStroke = createInstance("UIStroke", {
	Color = Color3.fromRGB(50, 50, 50),
	Thickness = 1,
	Parent = nYaNn
})

nYaNn.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/86224472741926/Anhba/refs/heads/main/Fram%20nyann.txt"))()
end)

-- ===== HUB BUTTON: TEDDY HUB HOP =====
local teddyHubHop = createInstance("TextButton", {
	Name = "TeddyHubHop",
	Size = UDim2.new(1, 0, 0, 45),
	Position = UDim2.new(0, 0, 0, 215),
	BackgroundColor3 = Color3.fromRGB(30, 30, 30),
	BorderColor3 = Color3.fromRGB(27, 42, 53),
	BorderSizePixel = 0,
	Text = "    Teddy Hub Hop",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 16,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
	Active = true,
	AutoButtonColor = true,
	Selectable = true,
	Parent = bloxFruitsPage
})

local teddyCorner = createInstance("UICorner", {
	CornerRadius = UDim.new(0, 8),
	Parent = teddyHubHop
})

local teddyStroke = createInstance("UIStroke", {
	Color = Color3.fromRGB(50, 50, 50),
	Thickness = 1,
	Parent = teddyHubHop
})

teddyHubHop.MouseButton1Click:Connect(function()
	repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
end)

-- ===== TOGGLE BUTTON LOGIC =====
local isVisible = true
toggleButton.MouseButton1Click:Connect(function()
	isVisible = not isVisible
	mainFrame.Visible = isVisible
end)

-- ===== SELECTION LOGIC =====
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
	
	local indicator = createInstance("Frame", {
		Name = "SelectionIndicator",
		Size = UDim2.new(0, 4, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = Color3.fromRGB(0, 170, 255),
		BorderSizePixel = 0,
		Parent = button
	})
	
	local indicatorCorner = createInstance("UICorner", {
		CornerRadius = UDim.new(0, 2),
		Parent = indicator
	})
	
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

-- Setup click events for menu buttons
bloxFruitsBtn.MouseButton1Click:Connect(function()
	setSelection(bloxFruitsBtn)
end)

growAGardenBtn.MouseButton1Click:Connect(function()
	setSelection(growAGardenBtn)
end)
