local Converted = {
    ["_ScreenGui"] = Instance.new("ScreenGui");
    ["_Frame"] = Instance.new("Frame");
    ["_ScrollingFrame"] = Instance.new("ScrollingFrame");
    ["_Buttons"] = Instance.new("Folder");
    ["_Sound"] = Instance.new("Folder");
    ["_SoundTxt"] = Instance.new("TextBox");
    ["_UICorner"] = Instance.new("UICorner");
    ["_Play"] = Instance.new("TextButton");
    ["_UICorner1"] = Instance.new("UICorner");
    ["_Reload"] = Instance.new("Folder");
    ["_Reload1"] = Instance.new("TextButton");
    ["_DragonToggle"] = Instance.new("TextButton");
    ["_UICorner2"] = Instance.new("UICorner");
    ["_Change"] = Instance.new("Folder");
    ["_Dragon"] = Instance.new("Folder");
    ["_Change1"] = Instance.new("TextButton");
    ["_UICorner3"] = Instance.new("UICorner");
    ["_Type"] = Instance.new("TextBox");
    ["_UICorner4"] = Instance.new("UICorner");
    ["_Style"] = Instance.new("TextBox");
    ["_UICorner5"] = Instance.new("UICorner");
    ["_Value"] = Instance.new("TextBox");
    ["_UICorner6"] = Instance.new("UICorner");
    ["_Heat"] = Instance.new("Folder");
    ["_InfHeat"] = Instance.new("TextButton");
    ["_UICorner7"] = Instance.new("UICorner");
    ["_Credits"] = Instance.new("TextLabel");
    ["_UICorner8"] = Instance.new("UICorner");
    ["_X"] = Instance.new("TextButton");
    ["_UICorner9"] = Instance.new("UICorner");
    ["_UICorner10"] = Instance.new("UICorner");
    ["_Open"] = Instance.new("TextButton");
    ["_UICorner11"] = Instance.new("UICorner");
    ["_UICorner12"] = Instance.new("UICorner");
    ["_UIStroke"] = Instance.new("UIStroke");
}

-- Properties:

Converted["_ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_Frame"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Converted["_Frame"].BackgroundTransparency = 0.25
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Frame"].Size = UDim2.new(0, 500, 0, 250)
Converted["_Frame"].Parent = Converted["_ScreenGui"]

Converted["_ScrollingFrame"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame"].ScrollBarThickness = 10
Converted["_ScrollingFrame"].Active = true
Converted["_ScrollingFrame"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ScrollingFrame"].BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Converted["_ScrollingFrame"].BackgroundTransparency = 0.25
Converted["_ScrollingFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame"].BorderSizePixel = 0
Converted["_ScrollingFrame"].Position = UDim2.new(0.5, 0, 0.515999973, 0)
Converted["_ScrollingFrame"].Size = UDim2.new(0, 450, 0, 200)
Converted["_ScrollingFrame"].Parent = Converted["_Frame"]

Converted["_Buttons"].Name = "Buttons"
Converted["_Buttons"].Parent = Converted["_ScrollingFrame"]

Converted["_Sound"].Name = "Sound"
Converted["_Sound"].Parent = Converted["_Buttons"]

Converted["_SoundTxt"].CursorPosition = -1
Converted["_SoundTxt"].Font = Enum.Font.Cartoon
Converted["_SoundTxt"].PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SoundTxt"].PlaceholderText = "Enter sound"
Converted["_SoundTxt"].Text = ""
Converted["_SoundTxt"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SoundTxt"].TextSize = 14
Converted["_SoundTxt"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_SoundTxt"].BackgroundColor3 = Color3.fromRGB(75, 147, 255)
Converted["_SoundTxt"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SoundTxt"].BorderSizePixel = 0
Converted["_SoundTxt"].Position = UDim2.new(0.342777789, 0, 0.0612500012, 0)
Converted["_SoundTxt"].Size = UDim2.new(0, 285, 0, 38)
Converted["_SoundTxt"].Name = "SoundTxt"
Converted["_SoundTxt"].Parent = Converted["_Sound"]

Converted["_UICorner"].Parent = Converted["_SoundTxt"]

Converted["_Play"].Font = Enum.Font.Cartoon
Converted["_Play"].Text = "Play"
Converted["_Play"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Play"].TextSize = 14
Converted["_Play"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Play"].BackgroundColor3 = Color3.fromRGB(75, 138, 255)
Converted["_Play"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Play"].BorderSizePixel = 0
Converted["_Play"].Position = UDim2.new(0.798777819, 0, 0.0599999987, 0)
Converted["_Play"].Size = UDim2.new(0, 89, 0, 38)
Converted["_Play"].Name = "Play"
Converted["_Play"].Parent = Converted["_Sound"]

Converted["_UICorner1"].Parent = Converted["_Play"]

Converted["_Reload"].Name = "Reload"
Converted["_Reload"].Parent = Converted["_Buttons"]

Converted["_Reload1"].Font = Enum.Font.Cartoon
Converted["_Reload1"].Text = "Reload Character"
Converted["_Reload1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Reload1"].TextSize = 14
Converted["_Reload1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Reload1"].BackgroundColor3 = Color3.fromRGB(170, 255, 255)
Converted["_Reload1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Reload1"].BorderSizePixel = 0
Converted["_Reload1"].Position = UDim2.new(0.186666667, 0, 0.321298838, 0)
Converted["_Reload1"].Size = UDim2.new(0, 126, 0, 50)
Converted["_Reload1"].Name = "Reload"
Converted["_Reload1"].Parent = Converted["_Reload"]

Converted["_UICorner2"].Parent = Converted["_Reload1"]

Converted["_Change"].Name = "Change"
Converted["_Change"].Parent = Converted["_Buttons"]

Converted["_Change1"].Font = Enum.Font.Cartoon
Converted["_Change1"].Text = "Change Value"
Converted["_Change1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Change1"].TextSize = 14
Converted["_Change1"].BackgroundColor3 = Color3.fromRGB(6, 197, 117)
Converted["_Change1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Change1"].BorderSizePixel = 0
Converted["_Change1"].Position = UDim2.new(0.0466666669, 0, 0.119999997, 0)
Converted["_Change1"].Size = UDim2.new(0, 126, 0, 50)
Converted["_Change1"].Name = "Change"
Converted["_Change1"].Parent = Converted["_Change"]

Converted["_UICorner3"].Parent = Converted["_Change1"]

Converted["_Type"].CursorPosition = -1
Converted["_Type"].Font = Enum.Font.Cartoon
Converted["_Type"].PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Type"].PlaceholderText = "Name"
Converted["_Type"].Text = ""
Converted["_Type"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Type"].TextSize = 14
Converted["_Type"].BackgroundColor3 = Color3.fromRGB(140, 140, 140)
Converted["_Type"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Type"].BorderSizePixel = 0
Converted["_Type"].Position = UDim2.new(1.15873015, 0, 0.600000024, 0)
Converted["_Type"].Size = UDim2.new(0, 116, 0, 19)
Converted["_Type"].Name = "Type"
Converted["_Type"].Parent = Converted["_Change1"]

Converted["_UICorner4"].Parent = Converted["_Type"]

Converted["_Style"].CursorPosition = -1
Converted["_Style"].Font = Enum.Font.Cartoon
Converted["_Style"].PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Style"].PlaceholderText = "Style"
Converted["_Style"].Text = ""
Converted["_Style"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Style"].TextSize = 14
Converted["_Style"].BackgroundColor3 = Color3.fromRGB(140, 140, 140)
Converted["_Style"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Style"].BorderSizePixel = 0
Converted["_Style"].Position = UDim2.new(1.15873015, 0, 0, 0)
Converted["_Style"].Size = UDim2.new(0, 116, 0, 19)
Converted["_Style"].Name = "Style"
Converted["_Style"].Parent = Converted["_Change1"]

Converted["_UICorner5"].Parent = Converted["_Style"]

Converted["_Value"].CursorPosition = -1
Converted["_Value"].Font = Enum.Font.Cartoon
Converted["_Value"].PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Value"].PlaceholderText = "Value"
Converted["_Value"].Text = ""
Converted["_Value"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Value"].TextSize = 14
Converted["_Value"].BackgroundColor3 = Color3.fromRGB(76, 100, 206)
Converted["_Value"].BackgroundTransparency = 0.25
Converted["_Value"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Value"].BorderSizePixel = 0
Converted["_Value"].Position = UDim2.new(2.22222233, 0, 0, 0)
Converted["_Value"].Size = UDim2.new(0, 116, 0, 50)
Converted["_Value"].Name = "Value"
Converted["_Value"].Parent = Converted["_Change1"]

Converted["_UICorner6"].Parent = Converted["_Value"]

Converted["_Heat"].Name = "Heat"
Converted["_Heat"].Parent = Converted["_Buttons"]

Converted["_InfHeat"].Font = Enum.Font.Cartoon
Converted["_InfHeat"].Text = "Infinite Heat"
Converted["_InfHeat"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_InfHeat"].TextSize = 14
Converted["_InfHeat"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_InfHeat"].BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Converted["_InfHeat"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_InfHeat"].BorderSizePixel = 0
Converted["_InfHeat"].Position = UDim2.new(0.48888889, 0, 0.322794199, 0)
Converted["_InfHeat"].Size = UDim2.new(0, 126, 0, 50)
Converted["_InfHeat"].Name = "InfHeat"
Converted["_InfHeat"].Parent = Converted["_Heat"]

Converted["_UICorner7"].Parent = Converted["_InfHeat"]

Converted["_Credits"].Font = Enum.Font.Gotham
Converted["_Credits"].Text = "Ducksy's Panel Ultimate"
Converted["_Credits"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Credits"].TextSize = 20
Converted["_Credits"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Credits"].BackgroundTransparency = 1
Converted["_Credits"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Credits"].BorderSizePixel = 0
Converted["_Credits"].Position = UDim2.new(0.0500000007, 0, 0, 0)
Converted["_Credits"].Size = UDim2.new(0, 450, 0, 25)
Converted["_Credits"].Name = "Credits"
Converted["_Credits"].Parent = Converted["_Frame"]

Converted["_UICorner8"].Parent = Converted["_Credits"]

Converted["_X"].Font = Enum.Font.Cartoon
Converted["_X"].Text = "X"
Converted["_X"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_X"].TextSize = 20
Converted["_X"].BackgroundColor3 = Color3.fromRGB(255, 43, 6)
Converted["_X"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_X"].BorderSizePixel = 0
Converted["_X"].Position = UDim2.new(0.941999972, 0, 0, 0)
Converted["_X"].Size = UDim2.new(0, 29, 0, 29)
Converted["_X"].Name = "X"
Converted["_X"].Parent = Converted["_Frame"]

Converted["_UICorner9"].Parent = Converted["_X"]

Converted["_UICorner10"].Parent = Converted["_Frame"]

Converted["_Dragon"].Parent = Converted["_Buttons"]

Converted["_DragonToggle"].Font = Enum.Font.Cartoon
Converted["_DragonToggle"].Text = "Dragon Style"
Converted["_DragonToggle"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DragonToggle"].TextSize = 14
Converted["_DragonToggle"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_DragonToggle"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_DragonToggle"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DragonToggle"].BorderSizePixel = 0
Converted["_DragonToggle"].Position = UDim2.new(0.797777772, 0, 0.321985483, 0)
Converted["_DragonToggle"].Size = UDim2.new(0, 126, 0, 50)
Converted["_DragonToggle"].Name = "DragonToggle"
Converted["_DragonToggle"].Parent = Converted["_Dragon"]

Converted["UICorner12"].Parent = Converted["_DragonToggle"]

Converted["_Open"].Font = Enum.Font.Cartoon
Converted["_Open"].Text = "Open"
Converted["_Open"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Open"].TextSize = 14
Converted["_Open"].BackgroundColor3 = Color3.fromRGB(23, 184, 112)
Converted["_Open"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Open"].BorderSizePixel = 0
Converted["_Open"].Position = UDim2.new(0.884726822, 0, 0.467741936, 0)
Converted["_Open"].Size = UDim2.new(0, 98, 0, 31)
Converted["_Open"].Name = "Open"
Converted["_Open"].Parent = Converted["_ScreenGui"]

Converted["_UICorner11"].Parent = Converted["_Open"]

Converted["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke"].Color = Color3.fromRGB(65, 65, 65)
Converted["_UIStroke"].Parent = Converted["_Open"]

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
local char = plr.Character
local function Notify(text) -- Notification
    game.Players.LocalPlayer.PlayerGui["Notify"]:Fire(text)
end

rplaysound = (function(a1) -- rplaysound
if not S_ReplicatedStorage_2.Sounds:FindFirstChild(a1) then
    return Notify("Sound not found!")	
end
u10.playsound(S_ReplicatedStorage_2.Sounds[a1], u9.hrp, nil, nil, true)
u5:FireServer({"repsound", a1})
end)

Converted["_Play"].Activated:Connect(function()
    local soundName = Converted["_SoundTxt"].Text
    rplaysound(soundName)
end)

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

    Converted["_InfHeat"].Activated:Connect(function()
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

Converted["_Change1"].Activated:Connect(function()
    local value = Converted["_Value"].Text
    local name = Converted["_Type"].Text
    local style = Converted["_Style"].Text
    local parentObject = game.ReplicatedStorage.Styles[style]
    local Value = parentObject:FindFirstChild(name)

    if Value then
        if Value:IsA("Animation") then
            Value.AnimationId = value
            Notify("Animation changed successfully")
        elseif Value:IsA("StringValue") then
            Value.Value = value
            Notify("Value changed successfully")
        end
    else
        Notify("Value not found.")
    end
end)

Converted["_DragonToggle"].Activated:Connect(function()
    _G.DEMoveset = false _G.MorphMod = true _G.VoiceMod = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/altaccountv1/no-idea/main/Dragon%20New%20No%20obfuscate.lua"))();
end)
Converted["_Reload1"].Activated:Connect(function()
    local oldcframe = char.HumanoidRootPart.CFrame
    interf.Client.Disabled = true
    task.wait()
    interf.Client.Disabled = false
    task.wait()
    char.HumanoidRootPart.CFrame = oldcframe
end)

Converted["_Frame"].Visible = false
Converted["_Open"].Visible = true
-- Function to open/close the GUI
local function toggleGui()
    Converted["_Frame"].Visible = not Converted["_Frame"].Visible
    Converted["_Open"].Visible = not Converted["_Open"].Visible
end

-- Event handler for close button activation
Converted["_X"].Activated:Connect(function()
    toggleGui()
end)

-- Event handler for open button activation
Converted["_Open"].Activated:Connect(function()
    toggleGui()
end)
