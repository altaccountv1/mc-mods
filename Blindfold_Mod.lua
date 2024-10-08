local plr = game.Players.LocalPlayer
local bots = game.Workspace.Bots.AI

local correction = Instance.new("ColorCorrectionEffect")
correction.Parent = workspace.CurrentCamera
correction.Name = "Blindness"

local frId = 0

local allHighlights = { }

local ein = game.Players.LocalPlayer.PlayerGui.EInterface
local atm = game.Lighting:FindFirstChildWhichIsA("Atmosphere")

function isInBattle(p)
	return (p:FindFirstChild("InBattle") and true or false)
end

local function canBeVisible(char)
	if not char or not char:FindFirstChild("HumanoidRootPart") then return false end
	
	if not plr.Status:FindFirstChild("MyArena") or not plr.Status.MyArena.Value or not char:FindFirstChild("MyArena") or char.MyArena.Value ~= plr.Status.MyArena.Value then
		return false
	end
	
	if (plr.Character.HumanoidRootPart.Position - char.HumanoidRootPart.Position).Magnitude > 40 or char:FindFirstChild("Health").Value <= 0 or char.Parent.Name == "DeadAI" then
		return false
	end
	
	-- gun
	if char:FindFirstChild("TookAim") and char:FindFirstChild("TookAim").Value or char:FindFirstChild("Reloading") and char:FindFirstChild("Reloading").Value then
		return true
	end
	
	-- damage
	if char:FindFirstChild("Stunned") or char:FindFirstChild("Damaged") and char:FindFirstChild("Damaged").Value or char:FindFirstChild("Heated") or char:FindFirstChild("Ragdoll") and char:FindFirstChild("Ragdoll").Value or char:FindFirstChild("Grabbed") then
		return true
	end
	
	-- attacking
	if char:FindFirstChild("Attacking") and char:FindFirstChild("Attacking").Value or char:FindFirstChild("Taunting") and char:FindFirstChild("Taunting").Value then
		return true
	end
	
	return false
end

local function hideEnemyUi(char)
	local isVisible = canBeVisible(char)
	if char.HumanoidRootPart:FindFirstChild("AI") then
		char.HumanoidRootPart.AI.Enabled = isVisible
		if char.HumanoidRootPart.AI:FindFirstChild("Meter") then
			char.HumanoidRootPart.AI.Meter.Visible = false
		end
		if char.HumanoidRootPart.AI:FindFirstChild("HeatMeter") then
			char.HumanoidRootPart.AI.HeatMeter.Visible = false
		end
	end
	if char.HumanoidRootPart:FindFirstChild("Level") then
		char.HumanoidRootPart.Level.Enabled = isVisible
	end
	if char.HumanoidRootPart:FindFirstChild("Reticle") and not isVisible then
		char.HumanoidRootPart.Reticle.Enabled = false
	end
end

local function updatePlayerHighlight(p)
	local can = false
	local status = p.Status
	if p == plr then
		can = true
	else
		if (p.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 40 and (isInBattle(p) and not isInBattle(plr) or isInBattle(p) and isInBattle(plr) and plr.Status.MyArena.Value == status.MyArena.Value) then
			can = true
		end
	end
	
			local plrHighlight = p.Character:FindFirstChild("PlayerHighlight")
		if not plrHighlight and can then
		plrHighlight = Instance.new("Highlight")
		plrHighlight.Name = "PlayerHighlight"
			plrHighlight.FillTransparency = 1
			plrHighlight.OutlineTransparency = 0
			plrHighlight.FillColor = Color3.fromRGB(0, 0, 0)
			plrHighlight.Parent = p.Character
			plrHighlight.Adornee = p.Character
			plrHighlight.Enabled = true
		table.insert(allHighlights, plrHighlight)
	elseif plrHighlight and  not can then
		plrHighlight:Destroy()
		return
	elseif not plrHighlight and not can then
		return
		end
		
		local style = status.Style.Value
		
		if style then
			local find = game.ReplicatedStorage.Styles:FindFirstChild(style)
			if find then
				local color = find:FindFirstChild("Color")
				
				if color then
					plrHighlight.OutlineColor = color.Value
				else
					plrHighlight.OutlineColor = Color3.fromRGB(0, 225, 0)
				end
			else
				plrHighlight.OutlineColor = Color3.fromRGB(0, 225, 0)
			end
		else
			plrHighlight.OutlineColor = Color3.fromRGB(0, 225, 0)
		end
		
		plrHighlight.FillColor = plrHighlight.OutlineColor
		plrHighlight.OutlineTransparency = 0
		
		local heat = status.Heat.Value
		
	plrHighlight.FillTransparency = 1 - (heat * 0.005)
end

local function updatePropHighlights()
	local getArena = plr.Status.MyArena.Value
	if not getArena then
		return
	end
	
	for _,z in pairs(game.Workspace.Props:GetChildren()) do
		local propHighlight = z:FindFirstChild("PropHighlight")
		local can = false
		
		local mainPart = z:IsA("BasePart") and z or (z:IsA("Model") and z.PrimaryPart) and z.PrimaryPart or nil
		if mainPart and isInBattle(plr) then
			if (mainPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 16 then
				can = true
				if not propHighlight then
					propHighlight = Instance.new("Highlight")
					propHighlight.Name = "PropHighlight"
					propHighlight.FillTransparency = 0.8
					propHighlight.OutlineTransparency = 0
					local color = string.sub(z.Name, 1, 3) == "wep" and Color3.fromRGB(200, 0, 0) or Color3.fromRGB(0, 200, 0)
					propHighlight.OutlineColor = color
					propHighlight.FillColor = color
					propHighlight.Enabled = true
					propHighlight.Parent = z
					propHighlight.Adornee = z
					
					coroutine.wrap(function()
						repeat task.wait() until propHighlight == nil or (z.Parent:FindFirstChild("Humanoid"))
						if propHighlight ~= nil then propHighlight.Enabled = false propHighlight:Destroy() 
							local find = z.Parent:FindFirstChild("BlindHighlight") or z.Parent:FindFirstChild("PlayerHighlight")
							if find then
								find.Enabled = false
								find.Parent = game.Lighting
								game:GetService("RunService").RenderStepped:Wait()
								find.Parent = z.Parent
								find.Enabled = true
							end
						end
					end)()
				end
			end
		end
		
		if not can and propHighlight then
			propHighlight:Destroy()
		end
		
	end
	
end

local function showHighlight(char, val)
	if not char then
		return
	end
	if not val then val = false end
	
	local high = char:FindFirstChild("BlindHighlight")
	if not high and val then
		high = Instance.new("Highlight")
		high.Name = "BlindHighlight"
		high.Parent = char
		table.insert(allHighlights, high)
		
	elseif high and not val then
		high:Destroy()
		return
	elseif not high and not val then
		return
	end
	
	
	high.Parent = char
	high.OutlineTransparency = 0
	high.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	high.FillTransparency = 1
	high.FillColor = Color3.fromRGB(255, 255, 255)
	high.OutlineColor = Color3.fromRGB(255, 255 ,255)
	high.Enabled = val
	if char.Name == "Legendary Dragon" then
		high.OutlineColor = Color3.fromRGB(227, 0, 4)
		high.FillColor = high.OutlineColor
		local heat = char:FindFirstChild("Heat").Value
		high.FillTransparency = 1 - (heat * 0.005)
	else
		local dead = false
		if char:FindFirstChild("Health") and char:FindFirstChild("MaxHealth") then
			if char:FindFirstChild("Health").Value > 1 then
				high.FillTransparency = 1 - (char:FindFirstChild("Health").Value / char:FindFirstChild("MaxHealth").Value * 0.5)
			else
				dead = true
				high.FillTransparency = 0.5
				high.FillColor = Color3.fromRGB(225, 0, 0)
			end
		end

		local color = Color3.fromRGB(255, 255, 255)
		if char.Name == "Parker" then
			color = Color3.fromRGB(98, 255, 0)
		elseif char.Name == "Hue" then
			color = Color3.fromRGB(0, 153, 255)
		elseif char.Name == "Derek" then
			color = Color3.fromRGB(255, 149, 0)
		elseif char.Name == "Vulcan" then
			color = Color3.fromRGB(255, 73, 143)
		elseif char.Name == "Silent Stranger" then
			color = Color3.fromRGB(225, 0, 255)
		elseif char.Name == "Gorillaman" or char.Name == "The Foreman" then
			color = Color3.fromRGB(255, 213, 0)
		end
		high.OutlineColor = color
		high.FillColor = color
	end	
	
end

local function updateVision()
if atm then
atm.Density = 0.93
atm.Offset = 0
atm.Color = Color3.fromRGB(0, 0, 0)
atm.Decay = Color3.fromRGB(0, 0, 0)
atm.Glare = 0
atm.Haze = 0
else
		game.Lighting.FogEnd = 50
		game.Lighting.FogStart = 0
		game.Lighting.FogColor = Color3.fromRGB(0, 0, 0)
	end
game.Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)	
	game.Lighting.ClockTime = 0
	
	plr.PlayerGui.Interface.Radar.Visible = not isInBattle(plr)
	
	correction.Saturation = -1
	
	if plr.Character:FindFirstChild("PlayerHighlight") then
		plr.Character.PlayerHighlight.Enabled = true
	else
		updatePlayerHighlight()
	end
	
	if isInBattle(plr) then
		local en = ein.EnemyHP.Enemy.Value
		
		if en then
			if en.Name ~= "Legendary Dragon" then
				ein.EnemyHP.BG.Meter.HPTxt.Text = "???/???"
			else
				ein.EnemyHP.BG.Meter.HPTxt.Text = "??????/∞"
			end
			local can = canBeVisible(en)
			if can then
				ein.EnemyHP.TextLabel.Text = en:FindFirstChild("VisualName") and en.VisualName.Value or en.Name
			else
				ein.EnemyHP.TextLabel.Text = "????"
			end
		end
		
		local lockedOn = plr.Character.LockedOn
		if lockedOn.Value ~= nil then
			if not canBeVisible(lockedOn.Value.Parent) then
				lockedOn.Value = nil
			end
		end
		
	correction.TintColor = Color3.fromRGB(0, 0, 0)
		correction.Brightness = -0.9
		
		local arena = plr.Status.MyArena.Value
		if arena then
			
			for _,z in pairs(arena.AI:GetChildren()) do
				local char = z.Value
				hideEnemyUi(char)

				if canBeVisible(char) then
					showHighlight(char, true)
				else
					showHighlight(char, false)
				end
			end
			
			end
		
	else
		correction.TintColor = Color3.fromRGB(200, 200, 200)
		correction.Brightness = 0
		
		for _,z in pairs(bots:GetChildren()) do
			hideEnemyUi(z)

			showHighlight(z, false)
		end
	end
	
	for _,p in pairs(game.Players:GetPlayers()) do
		if p ~= plr then
			updatePlayerHighlight(p)
		end
	end
end

game:GetService("RunService").RenderStepped:Connect(function()
	frId += 1
	updatePlayerHighlight(plr)
	updateVision()
	updatePropHighlights()
	
	if frId >= 144 * 3 then
		frId = 0
		local oldHighlights = allHighlights
		local newHighlights = {}
	coroutine.wrap(function()
			for _,old in pairs(oldHighlights) do
				if old.Name == "BlindHighlight" and canBeVisible(old.Parent) == false then
					old:Destroy()
					continue
				end
				local parent = old.adornee
				local new = old:Clone()
				old:Destroy()
				
				new.Parent = parent
				new.Adornee = parent
				table.insert(newHighlights, new)
				game:GetService("RunService").RenderStepped:Wait()
			end
			allHighlights = newHighlights
		end)()
	end
end)

for _,z in pairs(ein.EnemyHP.BG.Meter:GetChildren()) do
	if string.sub(z.Name, 1, 4) == "Fill" then
		z.BackgroundTransparency = 1
	end
end
