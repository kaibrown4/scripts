local x_iter = 10
local z_iter = 10
local pos = owner.Character.HumanoidRootPart.Position
local Pixels = {}
 
for x = 1, x_iter do
    Pixels[x] = {}
    for z = 1, z_iter do
        local pixel = Instance.new("SpawnLocation", script)
        pixel.Size = Vector3.new(1,1,1)
        pixel.Position = Vector3.new(x, 3, z) + pos
        Pixels[x][z] = pixel
    end
end