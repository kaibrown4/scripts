splayers = game:GetService("Players")
rs = game:GetService("RunService")

local owner: Player = splayers:WaitForChild("kaibrown4")
local char = owner.CharacterAdded:Wait()
local hum: Humanoid = char.Humanoid
local humroot: BasePart = char.HumanoidRootPart
local isbroken = false
local health = 1000
local prevhumhealth = hum.Health
local b = Color3.new(0, 0.5, 0.8)
local en = Color3.new(0, 0.9, 1)
local dur = 0.1
local cd = false

local bbgui = Instance.new("BillboardGui", char.Head)
bbgui.Adornee = char.Head
bbgui.Size = UDim2.fromScale(1,1)
bbgui.StudsOffsetWorldSpace = Vector3.yAxis*3
bbgui.LightInfluence = 1

local conditions = {
	{1000, "0Great"};
	{750, "0Well"};
	{500, "1Ok"};
	{250, "1Bad"};
	{100, "1Critical"};
}

function roundtn(x, t)
	return math.round(x/t)*t
end

function flashshield()
	cd = true
	for I = 1,10 do
		task.wait(dur/20)
		shield.Color = b:Lerp(en, I/10)
	end
	for I = 1,10 do
		task.wait(dur/20)
		shield.Color = en:Lerp(b, I/10)
	end
	cd = false
end

function loghealth(damage)
	print("Shield damage taken: "..damage)
	print("Shield current health: "..health)
	local ind = 1
	for i = #conditions,1,-1 do
		if health <= conditions[i][1] then
			ind = i; break
		end
	end
	
	local message = conditions[ind][2]
	if message:sub(1,1) == "0" then
		print("Current shield condition: "..message:sub(2))
	elseif message:sub(1,1) == "1" then
		warn("Current shield condition: "..message:sub(2))
	end
end

function dmgindicator(damage)
	local txtlbl = Instance.new("TextLabel", bbgui)
	txtlbl.AnchorPoint = Vector2.one*0.5
	txtlbl.Position = UDim2.fromScale(0.5, 0.5)
	txtlbl.Size = UDim2.fromScale(2,2)
	txtlbl.TextSize = 30
	txtlbl.Text = "-"..roundtn(damage, 0.01)
	
	txtlbl.TextColor3 = Color3.fromHSV(0.6, 0.5, 1)
	txtlbl.TextStrokeColor3 = Color3.new(0, 0, 0)
	txtlbl.Font = Enum.Font.SourceSansBold
	txtlbl.TextStrokeTransparency = 0.75
	--txtlbl.TextTransparency = 0.8
	txtlbl.BackgroundTransparency = 1
	
	local start = os.clock()
	local duration = 3
	repeat
		local tyme = os.clock()
		local t = math.sqrt((tyme-start)/duration)
		
		txtlbl.Position = UDim2.fromScale(0.5, 0.5-t*5)
		txtlbl.TextTransparency = t+0.1
		--txtlbl.TextStrokeTransparency = t
		task.wait()
	until os.clock() - start >= duration
	txtlbl:Destroy()
end

function ondamaged(nhealth)
	local d = nhealth - prevhumhealth
	if not isbroken and d < 0 then
		health += d
		hum.Health += -d
		loghealth(-d)
		task.spawn(dmgindicator, -d)
		if not cd then task.spawn(flashshield) end
	end
	prevhumhealth = hum.Health
end
hum.HealthChanged:Connect(ondamaged)
function regenshield()
	local shield = Instance.new("Part", char)
	shield.Shape = "Ball"
	shield.Material = "ForceField"
	shield.Size = Vector3.one*9
	shield.CanCollide = false
	shield.Color = b
	local al = Instance.new("AlignPosition", shield)
	local a = Instance.new("Attachment", shield)
	local a2 = Instance.new("Attachment", humroot)
	a.Name = "a"
	a2.Name = "a2"
	al.Name = "al"
	al.Attachment0 = a
	al.Attachment1 = a2
	al.Responsiveness = 200
	al.MaxForce = 900000
	return shield
end
shield = regenshield()

rs.Stepped:Connect(function(dt)
	shield:SetNetworkOwner(owner)
end)
