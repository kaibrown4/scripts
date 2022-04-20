local x_iter = 10
local z_iter = 10
local pos = owner.Character.HumanoidRootPart.Position
local Pixels = {}
 
for x = 1, x_iter do
    Pixels[x] = {}
    for z = 1, z_iter do
        local pixel = Instance.new("SpawnLocation", script)
        pixel.Size = Vector3.new(1,1,1)
        pixel.Position = Vector3.new(x, 5, z) + pos
        pixel.Anchored = true
        Pixels[x][z] = pixel
    end
end

while task.wait()*10 do
    for x = 1, #Pixels do
        for z = 1,#Pixels[x] do
            local pixel = Pixels[x][z]
            local ray = workspace:Raycast(pixel.Position, pixel.Position - Vector3.new(0, 100, 0))
            pixel.Color = ray.Instance.Color
        end
    end
end
