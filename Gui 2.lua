-- Create the GUI
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

local u1 = game.Players.LocalPlayer
local S_UserInputService_1 = game:GetService("UserInputService")
local S_ReplicatedStorage_2 = game:GetService("ReplicatedStorage")
local S_ReplicatedFirst_3 = game:GetService("ReplicatedFirst")
local u5 = S_ReplicatedStorage_2.Events.ME
local u8 = require(S_ReplicatedFirst_3.Ambassador)
local u9 = require(S_ReplicatedFirst_3.Variables)
local u10 = require(S_ReplicatedStorage_2.Modules.Sound)
local u12 = nil

local plr = game:GetService("Players").LocalPlayer
local pgui = plr.PlayerGui
local interf = pgui.Interface

local function Notify(text) -- Notification
	game.Players.LocalPlayer.PlayerGui["Notify"]:Fire(text)
end

rplaysound = (function(a1) -- rplaysound
u10.playsound(S_ReplicatedStorage_2.Sounds[a1], u9.hrp, nil, nil, true)
u5:FireServer({"repsound", a1})
end)

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 335, 0, 235)
frame.Position = UDim2.new(0.5, -167.5, 0.5, -117.5)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Visible = false
local ScrFrame = Instance.new("ScrollingFrame", frame)
local corner = Instance.new("UICorner", frame)
ScrFrame.Size = UDim2.new(0, 300, 0, 200)
ScrFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
ScrFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ScrFrame.BackgroundTransparency = 0.5
ScrFrame.Visible = false

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = "X"
closeButton.Parent = frame
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 15

local openButton = Instance.new("TextButton")
local corner = Instance.new("UICorner", openButton)
openButton.Size = UDim2.new(0, 100, 0, 20)
openButton.Position = UDim2.new(0.95, -50, 0.5, -100)
openButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
openButton.Text = "Open GUI"
openButton.BackgroundTransparency = 0.5
openButton.Parent = gui


local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 150, 0, 30)
TextBox.Position = UDim2.new(0, 10, 0, 10)
TextBox.BackgroundColor3 = Color3.fromRGB(255, 144, 10)
TextBox.PlaceholderText = "Enter sound name"
TextBox.Text = "Enter sound name"
TextBox.Parent = ScrFrame

local Gap = 10

local Button = Instance.new("TextButton")
Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
Button.Size = UDim2.new(0, 70, 0, 30)
Button.Position = UDim2.new(0, TextBox.Position.X.Offset + TextBox.Size.X.Offset + 10, 0, TextBox.Position.Y.Offset)
Button.Text = "Play Sound"
Button.Parent = ScrFrame
Button.Activated:Connect(function()
    local soundName = TextBox.Text
    rplaysound(soundName)
end)

    local button = Instance.new("TextButton")
    local corner = Instance.new("UICorner", button)
    button.Size = UDim2.new(0, 100, 0, 50)
    button.Position = UDim2.new(0, 10, 0, Button.Position.Y.Offset + Button.Size.Y.Offset + Gap)
    button.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
    button.Text = "Infinite Heat"
    button.Parent = ScrFrame

    local Activated = false
    local FillHeatCoroutine

    local function FillHeat()
        local Event = game:GetService("ReplicatedStorage").Events.ME

        while Activated do
            local A_1 =  {
                [1] = "heat", 
                [2] = game:GetService("ReplicatedStorage").Moves.Taunt
            }
            Event:FireServer(A_1)
            task.wait() -- Add a short delay between each iteration
        end
    end

    button.Activated:Connect(function()
        Activated = not Activated
        if Activated then
            FillHeatCoroutine = coroutine.create(FillHeat)
            coroutine.resume(FillHeatCoroutine)
        else
            if FillHeatCoroutine then
                coroutine.yield(FillHeatCoroutine)
                FillHeatCoroutine = nil
            end
        end
    end)

local changeButton = Instance.new("TextButton")
local corner = Instance.new("UICorner", changeButton)
    changeButton.Size = UDim2.new(0, 100, 0, 50)
    changeButton.Position = UDim2.new(0, 10, 0, button.Position.Y.Offset + button.Size.Y.Offset + Gap)
    changeButton.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
    changeButton.Text = "Change Value"
    changeButton.Parent = ScrFrame


    local nameTextBox = Instance.new("TextBox")
    nameTextBox.Size = UDim2.new(0, 100, 0, 20)
    nameTextBox.Position = UDim2.new(0, 10, 0, changeButton.Position.Y.Offset + changeButton.Size.Y.Offset + 10)
    nameTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    nameTextBox.PlaceholderText = "Enter StringValue"
    nameTextBox.Parent = ScrFrame
    nameTextBox.Text = "Enter StringValue"
    local valueTextBox = Instance.new("TextBox")
    valueTextBox.Size = UDim2.new(0, 100, 0, 20)
    valueTextBox.Position = UDim2.new(0, 10, 0, nameTextBox.Position.Y.Offset + nameTextBox.Size.Y.Offset + 10)
    valueTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    valueTextBox.PlaceholderText = "Enter New Value"
    valueTextBox.Text = "Enter New Value"
    valueTextBox.Parent = ScrFrame

    changeButton.Activated:Connect(function()
        local name = nameTextBox.Text
        local value = valueTextBox.Text

        local brawlerFolder = game.ReplicatedStorage.Styles.Brawler
        local stringValue = brawlerFolder:FindFirstChild(name)

        if stringValue and stringValue:IsA("StringValue") then
            stringValue.Value = value
            Notify("Value changed successfully!")
        else
            Notify("StringValue not found.")
        end
    end)

    local changeButton = Instance.new("TextButton")
    local corner = Instance.new("UICorner", changeButton)
    changeButton.Size = UDim2.new(0, 100, 0, 50)
    changeButton.Position = UDim2.new(0, 10, 0, valueTextBox.Position.Y.Offset + valueTextBox.Size.Y.Offset + Gap)
    changeButton.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
    changeButton.Text = "Change Animation"
    changeButton.Parent = ScrFrame


    local animnametextbox = Instance.new("TextBox")
    animnametextbox.Size = UDim2.new(0, 100, 0, 20)
    animnametextbox.Position = UDim2.new(0, 10, 0, changeButton.Position.Y.Offset + changeButton.Size.Y.Offset + 10)
    animnametextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    animnametextbox.PlaceholderText = "Enter Animation"
    animnametextbox.Parent = ScrFrame
    animnametextbox.Text = "Enter Animation"
    local animidtextbox = Instance.new("TextBox")
    animidtextbox.Size = UDim2.new(0, 100, 0, 20)
    animidtextbox.Position = UDim2.new(0, 10, 0, animnametextbox.Position.Y.Offset + animnametextbox.Size.Y.Offset + 10)
    animidtextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    animidtextbox.PlaceholderText = "Enter New Id"
    animidtextbox.Text = "Enter New Id"
    animidtextbox.Parent = ScrFrame

    changeButton.Activated:Connect(function()
        local name = animnametextbox.Text
        local value = animidtextbox.Text

        local brawlerFolder = game.ReplicatedStorage.Styles.Brawler
        local anim = brawlerFolder:FindFirstChild(name)

        if anim and anim:IsA("Animation") then
            anim.AnimationId = value
            Notify("Animation Changed successfully!")
        else
            Notify("Animation not found.")
        end
    end)

local ReloadButton = Instance.new("TextButton")
local corner = Instance.new("UICorner", ReloadButton)
ReloadButton.Size = UDim2.new(0, 100, 0, 50)
ReloadButton.Position = UDim2.new(0, 10, 0, animidtextbox.Position.Y.Offset + animidtextbox.Size.Y.Offset + Gap)
ReloadButton.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
ReloadButton.Text = "Reload Character"
ReloadButton.Parent = ScrFrame
ReloadButton.Activated:Connect(function()
    interf.Client.Disabled = true
    task.wait()
    interf.Client.Disabled = false 
end)

local function addgenericButton(text, func)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 100, 0, 50)
    button.Position = UDim2.new(0, 10, 0, TextBox.Position.Y.Offset + TextBox.Size.Y.Offset + 10)
    button.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
    button.Text = text
    button.Parent = ScrFrame

    button.Activated:Connect(func)
end

-- Function to open/close the GUI
local function toggleGui()
    ScrFrame.Visible = not ScrFrame.Visible
    openButton.Visible = not openButton.Visible
    frame.Visible = not frame.Visible
end

-- Event handler for close button activation
closeButton.Activated:Connect(function()
    toggleGui()
end)

-- Event handler for open button activation
openButton.Activated:Connect(function()
    toggleGui()
end)
