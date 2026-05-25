local CustomGuiSystem = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local LeftColumn = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local BloxFruits = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local GrowAGarden = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local UIListLayout = Instance.new("UIListLayout")
local Separator = Instance.new("Frame")
local RightColumn = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIPadding_2 = Instance.new("UIPadding")
local TitleFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local PagesContainer = Instance.new("Frame")
local GrowAGardenPage = Instance.new("Frame")
local BloxFruitsPage = Instance.new("Frame")
local QuantumOnyxHub = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local BlueXHub = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local GravityHub = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local nYaNn = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local TeddyHubHop = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local HubTitle = Instance.new("TextLabel")
local by = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")

-- Properties

CustomGuiSystem.Name = "CustomGuiSystem"
CustomGuiSystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CustomGuiSystem.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = CustomGuiSystem
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)

UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 15)

UIAspectRatioConstraint.Parent = MainFrame
UIAspectRatioConstraint.AspectRatio = 1.25

LeftColumn.Name = "LeftColumn"
LeftColumn.Parent = MainFrame
LeftColumn.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
LeftColumn.BorderSizePixel = 0
LeftColumn.Position = UDim2.new(0, 9, 0, 45)
LeftColumn.Size = UDim2.new(0.219739825, -2, 1, -45)

UICorner_2.Parent = LeftColumn
UICorner_2.CornerRadius = UDim.new(0, 15)

BloxFruits.Name = "BloxFruits"
BloxFruits.Parent = LeftColumn
BloxFruits.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
BloxFruits.BorderSizePixel = 0
BloxFruits.Position = UDim2.new(0, -5, 0, 0)
BloxFruits.Size = UDim2.new(1, 18, 0, 45)
BloxFruits.Font = Enum.Font.GothamBold
BloxFruits.Text = "⚔️ Blox Fruits"
BloxFruits.TextColor3 = Color3.new(1, 1, 1)
BloxFruits.TextSize = 16

UICorner_3.Parent = BloxFruits
UICorner_3.CornerRadius = UDim.new(0, 10)

GrowAGarden.Name = "GrowAGarden"
GrowAGarden.Parent = LeftColumn
GrowAGarden.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
GrowAGarden.BorderSizePixel = 0
GrowAGarden.Position = UDim2.new(0, -5, 0, 0)
GrowAGarden.Size = UDim2.new(1, 18, 0, 45)
GrowAGarden.Font = Enum.Font.GothamBold
GrowAGarden.Text = "🌱 Grow a Garden"
GrowAGarden.TextColor3 = Color3.new(1, 1, 1)
GrowAGarden.TextSize = 16

UICorner_4.Parent = GrowAGarden
UICorner_4.CornerRadius = UDim.new(0, 10)

UIPadding.Parent = LeftColumn
UIPadding.PaddingBottom = UDim.new(0, 25)
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 25)
UIPadding.PaddingTop = UDim.new(0, 25)

UIListLayout.Parent = LeftColumn
UIListLayout.Padding = UDim.new(0, 15)

Separator.Name = "Separator"
Separator.Parent = MainFrame
Separator.BackgroundColor3 = Color3.new(1, 1, 1)
Separator.BorderSizePixel = 0
Separator.Position = UDim2.new(0.229543731, -1, 0, 45)
Separator.Size = UDim2.new(0.0012254715, 2, 0.934469581, -45)

RightColumn.Name = "RightColumn"
RightColumn.Parent = MainFrame
RightColumn.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
RightColumn.BorderSizePixel = 0
RightColumn.Position = UDim2.new(0.230769143, 2, 0, 45)
RightColumn.Size = UDim2.new(0.755750477, -2, 1, -45)

UICorner_5.Parent = RightColumn
UICorner_5.CornerRadius = UDim.new(0, 10)

UIPadding_2.Parent = RightColumn
UIPadding_2.PaddingBottom = UDim.new(0, 25)
UIPadding_2.PaddingLeft = UDim.new(0, 25)
UIPadding_2.PaddingRight = UDim.new(0, 25)
UIPadding_2.PaddingTop = UDim.new(0, 25)

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = RightColumn
TitleFrame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
TitleFrame.BackgroundTransparency = 1
TitleFrame.BorderSizePixel = 0
TitleFrame.Size = UDim2.new(1, 0, 0, 40)

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = TitleFrame
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0, 9, 0, -29)
TitleLabel.Size = UDim2.new(1, -20, 1, 0)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.Text = "Select a game"
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.TextSize = 18
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

UICorner_6.Parent = TitleFrame

PagesContainer.Name = "PagesContainer"
PagesContainer.Parent = RightColumn
PagesContainer.BackgroundTransparency = 1
PagesContainer.Position = UDim2.new(0, 0, 0, 50)
PagesContainer.Size = UDim2.new(1, 0, 1, -50)

GrowAGardenPage.Name = "GrowAGardenPage"
GrowAGardenPage.Parent = PagesContainer
GrowAGardenPage.BackgroundTransparency = 1
GrowAGardenPage.Size = UDim2.new(1, 0, 1, 0)
GrowAGardenPage.Visible = false

BloxFruitsPage.Name = "BloxFruitsPage"
BloxFruitsPage.Parent = PagesContainer
BloxFruitsPage.BackgroundTransparency = 1
BloxFruitsPage.Size = UDim2.new(1, 0, 1, 0)
BloxFruitsPage.Visible = false

QuantumOnyxHub.Name = "QuantumOnyxHub"
QuantumOnyxHub.Parent = BloxFruitsPage
QuantumOnyxHub.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
QuantumOnyxHub.BorderSizePixel = 0
QuantumOnyxHub.Position = UDim2.new(0, 0, 0, -25)
QuantumOnyxHub.Size = UDim2.new(1, 0, 0, 45)
QuantumOnyxHub.Font = Enum.Font.GothamBold
QuantumOnyxHub.Text = "   QuantumOnyx Hub"
QuantumOnyxHub.TextColor3 = Color3.new(1, 1, 1)
QuantumOnyxHub.TextSize = 16
QuantumOnyxHub.TextXAlignment = Enum.TextXAlignment.Left

UICorner_7.Parent = QuantumOnyxHub
UICorner_7.CornerRadius = UDim.new(0, 6)

BlueXHub.Name = "BlueXHub"
BlueXHub.Parent = BloxFruitsPage
BlueXHub.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
BlueXHub.BorderSizePixel = 0
BlueXHub.Position = UDim2.new(0, 0, 0, 35)
BlueXHub.Size = UDim2.new(1, 0, 0, 45)
BlueXHub.Font = Enum.Font.GothamBold
BlueXHub.Text = "    Blue X Hub"
BlueXHub.TextColor3 = Color3.new(1, 1, 1)
BlueXHub.TextSize = 16
BlueXHub.TextXAlignment = Enum.TextXAlignment.Left

UICorner_8.Parent = BlueXHub

GravityHub.Name = "GravityHub"
GravityHub.Parent = BloxFruitsPage
GravityHub.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
GravityHub.BorderSizePixel = 0
GravityHub.Position = UDim2.new(0, 0, 0, 95)
GravityHub.Size = UDim2.new(1, 0, 0, 45)
GravityHub.Font = Enum.Font.GothamBold
GravityHub.Text = "    Gravity Hub"
GravityHub.TextColor3 = Color3.new(1, 1, 1)
GravityHub.TextSize = 16
GravityHub.TextXAlignment = Enum.TextXAlignment.Left

UICorner_9.Parent = GravityHub

nYaNn.Name = "nYaNn"
nYaNn.Parent = BloxFruitsPage
nYaNn.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
nYaNn.BorderSizePixel = 0
nYaNn.Position = UDim2.new(0, 0, 0, 155)
nYaNn.Size = UDim2.new(1, 0, 0, 45)
nYaNn.Font = Enum.Font.GothamBold
nYaNn.Text = "    nYaNn Hub"
nYaNn.TextColor3 = Color3.new(1, 1, 1)
nYaNn.TextSize = 16
nYaNn.TextXAlignment = Enum.TextXAlignment.Left

UICorner_10.Parent = nYaNn

TeddyHubHop.Name = "TeddyHubHop"
TeddyHubHop.Parent = BloxFruitsPage
TeddyHubHop.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TeddyHubHop.BorderSizePixel = 0
TeddyHubHop.Position = UDim2.new(0, 0, 0, 215)
TeddyHubHop.Size = UDim2.new(1, 0, 0, 45)
TeddyHubHop.Font = Enum.Font.GothamBold
TeddyHubHop.Text = "    Teddy Hub Hop"
TeddyHubHop.TextColor3 = Color3.new(1, 1, 1)
TeddyHubHop.TextSize = 16
TeddyHubHop.TextXAlignment = Enum.TextXAlignment.Left

UICorner_11.Parent = TeddyHubHop

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TitleBar.BackgroundTransparency = 1
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 45)

HubTitle.Name = "HubTitle"
HubTitle.Parent = TitleBar
HubTitle.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
HubTitle.BorderSizePixel = 0
HubTitle.Position = UDim2.new(0, 9, 0, 7)
HubTitle.Size = UDim2.new(1, -20, 1, 0)
HubTitle.Font = Enum.Font.GothamBold
HubTitle.Text = "   Gohan Hub"
HubTitle.TextColor3 = Color3.new(1, 1, 1)
HubTitle.TextSize = 22
HubTitle.TextXAlignment = Enum.TextXAlignment.Left

by.Name = "by"
by.Parent = TitleBar
by.BackgroundColor3 = Color3.new(1, 1, 1)
by.BackgroundTransparency = 1
by.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
by.BorderSizePixel = 0
by.Position = UDim2.new(0.106617644, 0, 0.155555561, 0)
by.Size = UDim2.new(0, 200, 0, 50)
by.Font = Enum.Font.SourceSans
by.Text = "by elecgic"
by.TextColor3 = Color3.new(1, 1, 1)
by.TextSize = 17

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = CustomGuiSystem
ToggleButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ToggleButton.Position = UDim2.new(0.105128206, 0, 0.102604173, 0)
ToggleButton.Size = UDim2.new(0, 70, 0, 70)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.Text = ""
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.TextSize = 20

UICorner_12.Parent = ToggleButton
UICorner_12.CornerRadius = UDim.new(0, 15)

ImageLabel.Parent = ToggleButton
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 0, -0.100000001, 0)
ImageLabel.Size = UDim2.new(1.07142854, 0, 1.10000002, 0)
ImageLabel.Image = "rbxassetid://79544588720132"
ImageLabel.ScaleType = Enum.ScaleType.Fit

-- Scripts

local function CBTV_fake_script() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript', MainFrame)

	local stroke = script.Parent.UIStroke
	
	while true do
		for i = 0, 1, 0.01 do
			stroke.Color = Color3.fromHSV(i,1,1)
			task.wait()
		end
	end
end
coroutine.wrap(CBTV_fake_script)()
local function NIDPXR_fake_script() -- LeftColumn.SelectionScript 
	local script = Instance.new('LocalScript', LeftColumn)

	local leftColumn = script.Parent
	local rightColumn = leftColumn.Parent:WaitForChild("RightColumn")
	local titleLabel = rightColumn:WaitForChild("TitleFrame"):WaitForChild("TitleLabel")
	local pagesContainer = rightColumn:WaitForChild("PagesContainer")
	
	local selectedButton = nil
	
	-- Map button name to page name and title
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
		
		-- Thêm sọc xanh dương ở cạnh bên trái
		local indicator = Instance.new("Frame")
		indicator.Name = "SelectionIndicator"
		indicator.Size = UDim2.new(0, 4, 1, 0)
		indicator.Position = UDim2.new(0, 0, 0, 0)
		indicator.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
		indicator.BorderSizePixel = 0
		indicator.Parent = button
		
		-- Thêm UICorner để bo tròn nhẹ
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(0, 2)
		corner.Parent = indicator
		
		-- Cập nhật Title và hiển thị trang tương ứng
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
	
	local function onButtonClicked(button)
		setSelection(button)
	end
	
	-- Thiết lập sự kiện click cho tất cả TextButton trong LeftColumn
	for _, child in leftColumn:GetChildren() do
		if child:IsA("TextButton") then
			child.MouseButton1Click:Connect(function()
				onButtonClicked(child)
			end)
		end
	end
	
	-- Lắng nghe khi có TextButton mới được thêm vào
	leftColumn.DescendantAdded:Connect(function(descendant)
		if descendant:IsA("TextButton") then
			descendant.MouseButton1Click:Connect(function()
				onButtonClicked(descendant)
			end)
		end
	end)
end
coroutine.wrap(NIDPXR_fake_script)()
local function OMXXB_fake_script() -- QuantumOnyxHub.ClickScript 
	local script = Instance.new('LocalScript', QuantumOnyxHub)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
	end)
end
coroutine.wrap(OMXXB_fake_script)()
local function MSNA_fake_script() -- BlueXHub.ClickScript 
	local script = Instance.new('LocalScript', BlueXHub)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()    
	end)
end
coroutine.wrap(MSNA_fake_script)()
local function GZWTAC_fake_script() -- GravityHub.ClickScript 
	local script = Instance.new('LocalScript', GravityHub)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
	end)
end
coroutine.wrap(GZWTAC_fake_script)()
local function MXBDWAZ_fake_script() -- nYaNn.ClickScript 
	local script = Instance.new('LocalScript', nYaNn)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/86224472741926/Anhba/refs/heads/main/Fram%20nyann.txt"))()
	end)
end
coroutine.wrap(MXBDWAZ_fake_script)()
local function OJXGT_fake_script() -- TeddyHubHop.ClickScript 
	local script = Instance.new('LocalScript', TeddyHubHop)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
	end)
end
coroutine.wrap(OJXGT_fake_script)()
local function MPFCMQH_fake_script() -- ToggleButton.LocalScript 
	local script = Instance.new('LocalScript', ToggleButton)

	local toggleButton = script.Parent
	local mainFrame = toggleButton.Parent:WaitForChild("MainFrame")
	
	local isVisible = true
	
	toggleButton.MouseButton1Click:Connect(function()
		isVisible = not isVisible
		mainFrame.Visible = isVisible
	
		if isVisible then
			toggleButton.Text = " "
		else
			toggleButton.Text = " "
		end
	end)
end
coroutine.wrap(MPFCMQH_fake_script)()
