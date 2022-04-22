local x_iter = 30
local z_iter = 30
local pos = owner.Character.HumanoidRootPart.Position
local Pixels = {}
local t = 0
local index = 1
 
for x = 1, x_iter do
    for z = 1, z_iter do
        t += 1
        local pixel = Instance.new("SpawnLocation", script)
        pixel.Enabled = false
        pixel.Size = Vector3.new(1,1,1)
        pixel.Position = Vector3.new(x, 5, z) + pos
        pixel.Anchored = true
        Pixels[t] = pixel
    end
end

while wait()/(wait()*4) do
    for i = 1,#Pixels do
        local pixel = Pixels[index]
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Whitelist
        raycastParams.FilterDescendantsInstances = {script:GetChildren()}
        raycastParams.IgnoreWater = true
        local ray = workspace:Raycast(pixel.Position, pixel.Position - Vector3.new(0, 100, 0), raycastParams)
        if pixel.Color == ray.Instance.Color then
            index += 1
           else
            pixel.Color = ray.Instance.Color
            index += 1
        end
    end
    index = 1
end
