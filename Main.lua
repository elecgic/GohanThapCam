local CustomGuiSystem = Instance.new("ScreenGui")
CustomGuiSystem.Name = "CustomGuiSystem"
CustomGuiSystem.ResetOnSpawn = false
CustomGuiSystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.85, 0, 0.85, 0)
MainFrame.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
MainFrame.BorderSizePixel = 0
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Parent = CustomGuiSystem

local UICorner = Instance.new("UICorner")
UICorner.Name = "UICorner"
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Name = "UIAspectRatioConstraint"
UIAspectRatioConstraint.AspectRatio = 1.25
UIAspectRatioConstraint.Parent = MainFrame

local LeftColumn = Instance.new("Frame")
LeftColumn.Name = "LeftColumn"
LeftColumn.Position = UDim2.new(0, 9, 0, 45)
LeftColumn.Size = UDim2.new(0.21974, -2, 1, -45)
LeftColumn.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
LeftColumn.BorderSizePixel = 0
LeftColumn.Parent = MainFrame

local UICorner2 = Instance.new("UICorner")
UICorner2.Name = "UICorner"
UICorner2.CornerRadius = UDim.new(0, 15)
UICorner2.Parent = LeftColumn

local BloxFruits = Instance.new("TextButton")
BloxFruits.Name = "BloxFruits"
BloxFruits.Position = UDim2.new(0, -5, 0, 0)
BloxFruits.Size = UDim2.new(1, 18, 0, 45)
BloxFruits.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
BloxFruits.BorderSizePixel = 0
BloxFruits.Text = "⚔️ Blox Fruits"
BloxFruits.TextColor3 = Color3.new(1, 1, 1)
BloxFruits.TextSize = 16
BloxFruits.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
BloxFruits.Parent = LeftColumn

local UICorner3 = Instance.new("UICorner")
UICorner3.Name = "UICorner"
UICorner3.CornerRadius = UDim.new(0, 10)
UICorner3.Parent = BloxFruits

local GrowAGarden = Instance.new("TextButton")
GrowAGarden.Name = "GrowAGarden"
GrowAGarden.Position = UDim2.new(0, -5, 0, 0)
GrowAGarden.Size = UDim2.new(1, 18, 0, 45)
GrowAGarden.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
GrowAGarden.BorderSizePixel = 0
GrowAGarden.Text = "🌱 Grow a Garden"
GrowAGarden.TextColor3 = Color3.new(1, 1, 1)
GrowAGarden.TextSize = 16
GrowAGarden.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
GrowAGarden.Parent = LeftColumn

local UICorner4 = Instance.new("UICorner")
UICorner4.Name = "UICorner"
UICorner4.CornerRadius = UDim.new(0, 10)
UICorner4.Parent = GrowAGarden

local UIPadding = Instance.new("UIPadding")
UIPadding.Name = "UIPadding"
UIPadding.PaddingTop = UDim.new(0, 25)
UIPadding.PaddingBottom = UDim.new(0, 25)
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 25)
UIPadding.Parent = LeftColumn

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Name = "UIListLayout"
UIListLayout.Padding = UDim.new(0, 15)
UIListLayout.Parent = LeftColumn

local Separator = Instance.new("Frame")
Separator.Name = "Separator"
Separator.Position = UDim2.new(0.229544, -1, 0, 45)
Separator.Size = UDim2.new(0.00122547, 2, 0.93447, -45)
Separator.BackgroundColor3 = Color3.new(1, 1, 1)
Separator.BorderSizePixel = 0
Separator.Parent = MainFrame

local RightColumn = Instance.new("Frame")
RightColumn.Name = "RightColumn"
RightColumn.Position = UDim2.new(0.230769, 2, 0, 45)
RightColumn.Size = UDim2.new(0.75575, -2, 1, -45)
RightColumn.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
RightColumn.BorderSizePixel = 0
RightColumn.Parent = MainFrame

local UICorner5 = Instance.new("UICorner")
UICorner5.Name = "UICorner"
UICorner5.CornerRadius = UDim.new(0, 10)
UICorner5.Parent = RightColumn

local UIPadding2 = Instance.new("UIPadding")
UIPadding2.Name = "UIPadding"
UIPadding2.PaddingTop = UDim.new(0, 25)
UIPadding2.PaddingBottom = UDim.new(0, 25)
UIPadding2.PaddingLeft = UDim.new(0, 25)
UIPadding2.PaddingRight = UDim.new(0, 25)
UIPadding2.Parent = RightColumn

local TitleFrame = Instance.new("Frame")
TitleFrame.Name = "TitleFrame"
TitleFrame.Size = UDim2.new(1, 0, 0, 40)
TitleFrame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
TitleFrame.BackgroundTransparency = 1
TitleFrame.BorderSizePixel = 0
TitleFrame.Transparency = 1
TitleFrame.Parent = RightColumn

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.Position = UDim2.new(0, 9, 0, -29)
TitleLabel.Size = UDim2.new(1, -20, 1, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Transparency = 1
TitleLabel.Text = "Select a game"
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.TextSize = 18
TitleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleFrame

local UICorner6 = Instance.new("UICorner")
UICorner6.Name = "UICorner"

UICorner6.Parent = TitleFrame

local PagesContainer = Instance.new("Frame")
PagesContainer.Name = "PagesContainer"
PagesContainer.Position = UDim2.new(0, 0, 0, 50)
PagesContainer.Size = UDim2.new(1, 0, 1, -50)
PagesContainer.BackgroundTransparency = 1
PagesContainer.Transparency = 1
PagesContainer.Parent = RightColumn

local GrowAGardenPage = Instance.new("Frame")
GrowAGardenPage.Name = "GrowAGardenPage"
GrowAGardenPage.Size = UDim2.new(1, 0, 1, 0)
GrowAGardenPage.BackgroundTransparency = 1
GrowAGardenPage.Visible = false
GrowAGardenPage.Transparency = 1
GrowAGardenPage.Parent = PagesContainer

local BloxFruitsPage = Instance.new("Frame")
BloxFruitsPage.Name = "BloxFruitsPage"
BloxFruitsPage.Size = UDim2.new(1, 0, 1, 0)
BloxFruitsPage.BackgroundTransparency = 1
BloxFruitsPage.Visible = false
BloxFruitsPage.Transparency = 1
BloxFruitsPage.Parent = PagesContainer

local QuantumOnyxHub = Instance.new("TextButton")
QuantumOnyxHub.Name = "QuantumOnyxHub"
QuantumOnyxHub.Position = UDim2.new(0, 0, 0, -25)
QuantumOnyxHub.Size = UDim2.new(1, 0, 0, 45)
QuantumOnyxHub.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
QuantumOnyxHub.BorderSizePixel = 0
QuantumOnyxHub.Text = "   QuantumOnyx Hub"
QuantumOnyxHub.TextColor3 = Color3.new(1, 1, 1)
QuantumOnyxHub.TextSize = 16
QuantumOnyxHub.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
QuantumOnyxHub.TextXAlignment = Enum.TextXAlignment.Left
QuantumOnyxHub.Parent = BloxFruitsPage

local UICorner7 = Instance.new("UICorner")
UICorner7.Name = "UICorner"
UICorner7.CornerRadius = UDim.new(0, 6)
UICorner7.Parent = QuantumOnyxHub

local UIStroke = Instance.new("UIStroke")
UIStroke.Name = "UIStroke"
UIStroke.Color = Color3.new(0.235294, 0.235294, 0.235294)
UIStroke.Parent = QuantumOnyxHub

local BlueXHub = Instance.new("TextButton")
BlueXHub.Name = "BlueXHub"
BlueXHub.Position = UDim2.new(0, 0, 0, 35)
BlueXHub.Size = UDim2.new(1, 0, 0, 45)
BlueXHub.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
BlueXHub.BorderSizePixel = 0
BlueXHub.Text = "    Blue X Hub"
BlueXHub.TextColor3 = Color3.new(1, 1, 1)
BlueXHub.TextSize = 16
BlueXHub.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
BlueXHub.TextXAlignment = Enum.TextXAlignment.Left
BlueXHub.Parent = BloxFruitsPage

local UICorner8 = Instance.new("UICorner")
UICorner8.Name = "UICorner"

UICorner8.Parent = BlueXHub

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Name = "UIStroke"
UIStroke2.Color = Color3.new(0.196078, 0.196078, 0.196078)
UIStroke2.Parent = BlueXHub

local GravityHub = Instance.new("TextButton")
GravityHub.Name = "GravityHub"
GravityHub.Position = UDim2.new(0, 0, 0, 95)
GravityHub.Size = UDim2.new(1, 0, 0, 45)
GravityHub.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
GravityHub.BorderSizePixel = 0
GravityHub.Text = "    Gravity Hub"
GravityHub.TextColor3 = Color3.new(1, 1, 1)
GravityHub.TextSize = 16
GravityHub.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
GravityHub.TextXAlignment = Enum.TextXAlignment.Left
GravityHub.Parent = BloxFruitsPage

local UICorner9 = Instance.new("UICorner")
UICorner9.Name = "UICorner"

UICorner9.Parent = GravityHub

local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Name = "UIStroke"
UIStroke3.Color = Color3.new(0.196078, 0.196078, 0.196078)
UIStroke3.Parent = GravityHub

local nYaNn = Instance.new("TextButton")
nYaNn.Name = "nYaNn"
nYaNn.Position = UDim2.new(0, 0, 0, 155)
nYaNn.Size = UDim2.new(1, 0, 0, 45)
nYaNn.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
nYaNn.BorderSizePixel = 0
nYaNn.Text = "    nYaNn Hub"
nYaNn.TextColor3 = Color3.new(1, 1, 1)
nYaNn.TextSize = 16
nYaNn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
nYaNn.TextXAlignment = Enum.TextXAlignment.Left
nYaNn.Parent = BloxFruitsPage

local UICorner10 = Instance.new("UICorner")
UICorner10.Name = "UICorner"

UICorner10.Parent = nYaNn

local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Name = "UIStroke"
UIStroke4.Color = Color3.new(0.196078, 0.196078, 0.196078)
UIStroke4.Parent = nYaNn

local TeddyHubHop = Instance.new("TextButton")
TeddyHubHop.Name = "TeddyHubHop"
TeddyHubHop.Position = UDim2.new(0, 0, 0, 215)
TeddyHubHop.Size = UDim2.new(1, 0, 0, 45)
TeddyHubHop.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TeddyHubHop.BorderSizePixel = 0
TeddyHubHop.Text = "    Teddy Hub Hop"
TeddyHubHop.TextColor3 = Color3.new(1, 1, 1)
TeddyHubHop.TextSize = 16
TeddyHubHop.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TeddyHubHop.TextXAlignment = Enum.TextXAlignment.Left
TeddyHubHop.Parent = BloxFruitsPage

local UICorner11 = Instance.new("UICorner")
UICorner11.Name = "UICorner"

UICorner11.Parent = TeddyHubHop

local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Name = "UIStroke"
UIStroke5.Color = Color3.new(0.196078, 0.196078, 0.196078)
UIStroke5.Parent = TeddyHubHop

local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 45)
TitleBar.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TitleBar.BackgroundTransparency = 1
TitleBar.BorderSizePixel = 0
TitleBar.Transparency = 1
TitleBar.Parent = MainFrame

local HubTitle = Instance.new("TextLabel")
HubTitle.Name = "HubTitle"
HubTitle.Position = UDim2.new(0, 9, 0, 7)
HubTitle.Size = UDim2.new(1, -20, 1, 0)
HubTitle.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
HubTitle.BorderSizePixel = 0
HubTitle.Text = "   Gohan Hub"
HubTitle.TextColor3 = Color3.new(1, 1, 1)
HubTitle.TextSize = 22
HubTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
HubTitle.TextXAlignment = Enum.TextXAlignment.Left
HubTitle.Parent = TitleBar

local by = Instance.new("TextLabel")
by.Name = "by"
by.Position = UDim2.new(0.106618, 0, 0.155556, 0)
by.Size = UDim2.new(0, 200, 0, 50)
by.BackgroundColor3 = Color3.new(1, 1, 1)
by.BackgroundTransparency = 1
by.BorderSizePixel = 0
by.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
by.Transparency = 1
by.Text = "by elecgic"
by.TextColor3 = Color3.new(1, 1, 1)
by.TextSize = 17
by.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
by.Parent = TitleBar

local UIStroke6 = Instance.new("UIStroke")
UIStroke6.Name = "UIStroke"
UIStroke6.Thickness = 3
UIStroke6.Parent = MainFrame

local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Position = UDim2.new(0.105128, 0, 0.102604, 0)
ToggleButton.Size = UDim2.new(0, 70, 0, 70)
ToggleButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ToggleButton.Text = ""
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.TextSize = 20
ToggleButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ToggleButton.Parent = CustomGuiSystem

local UICorner12 = Instance.new("UICorner")
UICorner12.Name = "UICorner"
UICorner12.CornerRadius = UDim.new(0, 15)
UICorner12.Parent = ToggleButton

local UIStroke7 = Instance.new("UIStroke")
UIStroke7.Name = "UIStroke"
UIStroke7.Color = Color3.new(1, 0.921569, 0)
UIStroke7.Thickness = 1.5
UIStroke7.Parent = ToggleButton

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "ImageLabel"
ImageLabel.Position = UDim2.new(0, 0, -0.1, 0)
ImageLabel.Size = UDim2.new(1.07143, 0, 1.1, 0)
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.Transparency = 1
ImageLabel.Image = "rbxassetid://79544588720132"
ImageLabel.ScaleType = Enum.ScaleType.Fit
ImageLabel.Parent = ToggleButton

