local char = owner.Character
local rem
if game:GetService("ReplicatedStorage"):FindFirstChild("Block") then
	rem = game:GetService("ReplicatedStorage"):FindFirstChild("Block")
else
	rem = Instance.new("RemoteEvent", game:GetService("ReplicatedStorage"))
	rem.Name = "Block"
end

local tool = Instance.new("Tool", owner.Backpack)
tool.Name = "Launcher"

local handle = Instance.new("Part", tool)
handle.Name = "Handle"
handle.Size = Vector3.one

rem.OnServerEvent:Connect(function(plr, dir)
	local block = Instance.new("Part", script)
	block:SetNetworkOwner(owner)
	block.Size = Vector3.one*10
	block.CFrame = CFrame.lookAlong(char.HumanoidRootPart.Position + dir.Unit*7, dir.Unit, Vector3.yAxis)
	block.Velocity = dir.Unit*200 + char.HumanoidRootPart.Velocity
	block.CustomPhysicalProperties = PhysicalProperties.new(100, 0, 100)
	game:GetService("Debris"):AddItem(block, 15)
end)

NLS([[
local char = script.Parent
local owner = game:GetService("Players"):GetPlayerFromCharacter(char)
local tool = owner.Backpack.Launcher
local rem = game:GetService("ReplicatedStorage"):WaitForChild("Block")

tool.Activated:Connect(function()
	local mouse = owner:GetMouse()
	local dir = mouse.Hit.Position - owner.Character.HumanoidRootPart.Position
	rem:FireServer(dir)
end)
]], owner.Character)
