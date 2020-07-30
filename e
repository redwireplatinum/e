-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local NoMoreBulli = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Quote = Instance.new("TextLabel")
local Player = Instance.new("TextBox")
local Kill = Instance.new("TextButton")
--Properties:
NoMoreBulli.Name = "NoMoreBulli"
NoMoreBulli.Parent = game.CoreGui
NoMoreBulli.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = NoMoreBulli
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 0.976471, 0.290196)
MainFrame.Position = UDim2.new(0.37927568, 0, 0.0221402217, 0)
MainFrame.Size = UDim2.new(0, 300, 0, 206)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 300, 0, 50)
Title.Font = Enum.Font.GothamBold
Title.Text = "Ragdoll Engine: Toxic Person Eliminator 9000 "
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextStrokeTransparency = 0
Title.TextWrapped = true

Quote.Name = "Quote"
Quote.Parent = MainFrame
Quote.BackgroundColor3 = Color3.new(1, 1, 1)
Quote.BackgroundTransparency = 1
Quote.Position = UDim2.new(0, 0, 0.242718443, 0)
Quote.Size = UDim2.new(0, 300, 0, 67)
Quote.Font = Enum.Font.SourceSans
Quote.Text = "\"Violence is never the answer. Violence is a question, and the answer is yes.\" - RedWirePlatinum 2020"
Quote.TextColor3 = Color3.new(0, 0, 0)
Quote.TextScaled = true
Quote.TextSize = 14
Quote.TextWrapped = true

Player.Name = "Player"
Player.Parent = MainFrame
Player.BackgroundColor3 = Color3.new(0.835294, 0.815686, 0.243137)
Player.Position = UDim2.new(0, 0, 0.567961156, 0)
Player.Size = UDim2.new(0, 300, 0, 44)
Player.Font = Enum.Font.GothamBold
Player.PlaceholderColor3 = Color3.new(0, 0, 0)
Player.PlaceholderText = "Enter name to kill someone (supports short names)"
Player.Text = ""
Player.TextColor3 = Color3.new(0, 0, 0)
Player.TextScaled = true
Player.TextSize = 14
Player.TextWrapped = true

Kill.Name = "Kill"
Kill.Parent = MainFrame
Kill.BackgroundColor3 = Color3.new(0, 0, 0)
Kill.Position = UDim2.new(0.323333323, 0, 0.781553388, 0)
Kill.Size = UDim2.new(0, 107, 0, 45)
Kill.Font = Enum.Font.SourceSans
Kill.Text = "K i l l"
Kill.TextColor3 = Color3.new(1, 0, 0.0156863)
Kill.TextScaled = true
Kill.TextSize = 14
Kill.TextWrapped = true
-- Scripts:
function SCRIPT_LMSA85_FAKESCRIPT() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = MainFrame
	script.Parent.Draggable = true

end
coroutine.resume(coroutine.create(SCRIPT_LMSA85_FAKESCRIPT))
function SCRIPT_SPUD86_FAKESCRIPT() -- Kill.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Kill
	script.Parent.MouseButton1Down:connect(function()
		local name = script.Parent.Parent.Player
		local victim
		for i,v in pairs(game.Players:GetPlayers()) do
			if string.lower(v.Name):sub(1, string.len(name.Text)) == string.lower(name.Text) then
				victim = v.Character.HumanoidRootPart
			end
		end
	local v = Instance.new("BodyAngularVelocity")
	local chr = game.Players.LocalPlayer.Character
	local hrp = chr.HumanoidRootPart
	local inf = math.huge
	local tp = true
	local tp2 = true
	local ragdoll = true
	local cframe = hrp.CFrame
	local p = Instance.new("Part", workspace)
	p.CFrame = cframe
	p.Anchored = true
	v.P = inf
	v.MaxTorque = Vector3.new(inf, inf, inf)
	v.AngularVelocity = Vector3.new(5000, 5000, 5000)
	v.Parent = hrp
	game.RunService.Heartbeat:connect(function()
	if tp then
	    hrp.CFrame = victim.CFrame
	end
	if ragdoll then
	    game.ReplicatedStorage.Events.RagdollState:FireServer(false)
	end
	end)
	wait(1.5)
	tp = false
	v:Destroy()
	game.RunService.RenderStepped:connect(function()
	if tp2 then
	    hrp.CFrame = p.CFrame
	end
	end)
	wait(3.5)
	p:Destroy()
	tp2 = false
	ragdoll = false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_SPUD86_FAKESCRIPT))
