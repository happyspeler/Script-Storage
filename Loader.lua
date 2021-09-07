-- Gui to Lua
-- Version: 3.2

-- Instances:

local Loader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

--Properties:

Loader.Name = "Loader"
Loader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Loader
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(-0.5, 0, -0.349614382, 0)
Frame.Size = UDim2.new(2, 0, 2, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.262729645, 0)
TextLabel.Size = UDim2.new(1, 0, 0.0642673522, 0)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "Welcome"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 50

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.424711823, 0, 0.56362462, 0)
TextButton.Size = UDim2.new(0.150216132, 0, 0.0552699231, 0)
TextButton.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton.Font = Enum.Font.Ubuntu
TextButton.Text = "Continue"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UITextSizeConstraint_2.Parent = TextButton
UITextSizeConstraint_2.MaxTextSize = 60

-- Scripts:

local function DWJSGLQ_fake_script() -- TextLabel.Name 
	local script = Instance.new('LocalScript', TextLabel)

	local USER = game.Players.LocalPlayer.Name
	script.Parent.Text = "Hello ".. USER .. " welcome to Axenon"
	
	
end
coroutine.wrap(DWJSGLQ_fake_script)()
local function ECIKCWM_fake_script() -- TextLabel.Tween2 
	local script = Instance.new('LocalScript', TextLabel)

	local TweenService = game:GetService("TweenService")
	local Button = script.Parent.Parent.TextButton
	
	Button.MouseButton1Click:Connect(function()
		local frame = script.Parent
		frame:TweenPosition(UDim2.new(50, 0))
	end)
end
coroutine.wrap(ECIKCWM_fake_script)()
local function ECKHNH_fake_script() -- TextButton.Tween1 
	local script = Instance.new('LocalScript', TextButton)

	local TweenService = game:GetService("TweenService")
	local Button = script.Parent
	
	
	Button.MouseButton1Click:Connect(function()
		local frame = script.Parent.Parent.Parent.Frame
		frame:TweenSize(UDim2.new(50, 0))
		wait(1)
		loadstring(game:HttpGet("https://pastebin.com/raw/pUG3rbqk"))()
		script.Parent.Parent:Destroy()
	end)
	
	
end
coroutine.wrap(ECKHNH_fake_script)()
