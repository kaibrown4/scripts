local Frame_Part = Instance.new("Part", script) -- Get the Part that displays the Gui
Frame_Part.Size = Vector3.new(16, 10, 1)
Frame_Part.Position = Vector3.new(0, 8, 13.5)
Frame_Part.Anchored = true
Frame_Part.Material = "SmoothPlastic"
Frame_Part.Transparency = 1
local SurfaceGui_Display = Instance.new("SurfaceGui", Frame_Part) -- Get the Part's SurfaceGui
local SurfaceGui_Frame = Instance.new("Frame", SurfaceGui_Display) -- Get the Frame Display
SurfaceGui_Frame.BackgroundColor3 = Color3.new()
SurfaceGui_Frame.BorderColor3 = Color3.new(1,1,1)
SurfaceGui_Frame.Size = UDim2.fromScale(1, 1)
local y = owner.Character.HumanoidRootPart.Position.Y
local frame = 0
 
local InfoText = Instance.new("TextBox", SurfaceGui_Frame)
InfoText.BackgroundTransparency = 1
InfoText.TextColor3 = Color3.new(1,1,1)
InfoText.RichText = true
InfoText.Size = UDim2.fromScale(.5, 1/10)
InfoText.Text = "Server FPS: "..(2/wait())
InfoText.TextXAlignment = "Left"
InfoText.TextYAlignment = "Top"
 
local FPSText = Instance.new("TextBox", SurfaceGui_Frame)
FPSText.BackgroundTransparency = 1
FPSText.TextColor3 = Color3.new(1,1,1)
FPSText.RichText = true
FPSText.Position = UDim2.new(0, 0, 0, InfoText.TextSize + 4)
FPSText.Size = UDim2.fromScale(.5, 1/10)
FPSText.Text = "Simulation FPS: "
FPSText.TextXAlignment = "Left"
FPSText.TextYAlignment = "Top"
 
local TickCounter = Instance.new("TextBox", SurfaceGui_Frame)
TickCounter.BackgroundTransparency = 1
TickCounter.TextColor3 = Color3.new(1,1,1)
TickCounter.RichText = true
TickCounter.Position = UDim2.new(0, 0, 0, InfoText.TextSize + FPSText.TextSize + 8)
TickCounter.Size = UDim2.fromScale(.5, 1/10)
TickCounter.Text = "Tick Counter: "
TickCounter.TextXAlignment = "Left"
TickCounter.TextYAlignment = "Top"
 
local link = "https://raw.githubusercontent.com/kaibrown4/blockmatcher/main/nnmodule.lua"
local httpservice = game:GetService("HttpService")
local NN_Creator = loadstring(httpservice:GetAsync(link))()
 
local New_NN = NN_Creator:CreateNN(2, 5, 2, 2, .05, "LeakyReLU")
 
local Targets = {
    {{.5, .5}, {.5, .5}};
    {{.25, .75}, {.25, .75}};
    {{0.1, .5}, {0.1, .5}};
    {{0.25, .4}, {0.25, .4}};
}
 
local NN_Frames = {}
 
function RelativePosToWorldPos(X, Y)
    local New_X = (Frame_Part.Size.X * 100 * X)/2
    local New_Y = (Frame_Part.Size.Y * 100 * Y)/2
    return New_X, New_Y
end
 
function Round(X, Decimal_Point)
    local String_X = tostring(X)
    local Rounded_X = string.sub(String_X, 1, 2 + Decimal_Point)
    return tonumber(Rounded_X)
end
 
function LoadFrames()
    for I = 1,#Targets do
        local New_Frame = Instance.new("Frame", SurfaceGui_Frame)
        New_Frame.Size = UDim2.new(0, 50, 0, 50)
        New_Frame.ZIndex = 2
        
        local Position_Text = Instance.new("TextBox", New_Frame)
        Position_Text.ZIndex = 2
        Position_Text.Position = UDim2.new(.1, 0, .1, 0)
        Position_Text.Size = UDim2.fromScale(.75,.75)
        Position_Text.BackgroundTransparency = 1
        Position_Text.TextColor3 = Color3.fromRGB(0, 0, 150)
        Position_Text.TextScaled = true
        Position_Text.RichText = true
        Position_Text.Text = "(0, 0)"
        Position_Text.Font = Enum.Font.Arcade
        
        local Frame_Corner = Instance.new("UICorner", New_Frame)
        Frame_Corner.CornerRadius = UDim.new(1, 1)
        
        NN_Frames[I] = New_Frame
    end
end
 
function LoadTargetFrames()
    for i = 1,#Targets do
        local New_Frame = Instance.new("Frame", SurfaceGui_Frame)
        New_Frame.Size = UDim2.new(0, 50, 0, 50)
        New_Frame.Position = UDim2.fromScale(Targets[i][2][1], Targets[i][2][2])
        New_Frame.BackgroundTransparency = .55
        New_Frame.ZIndex = 1
 
        local Position_Text = Instance.new("TextBox", New_Frame)
        Position_Text.Position = UDim2.new(.1, 0, .1, 0)
        Position_Text.Size = UDim2.fromScale(.75,.75)
        Position_Text.BackgroundTransparency = 1
        Position_Text.TextColor3 = Color3.fromRGB(0, 0, 150)
        Position_Text.ZIndex = 1
        Position_Text.TextTransparency = .55
        Position_Text.TextScaled = true
        
        local roundedX = Round(Targets[i][2][1], 2)
        local roundedY = Round(Targets[i][2][2], 2)
        
        local x, y = RelativePosToWorldPos(roundedX, roundedY)
        
        Position_Text.Text = "("..x..", "..y..")"
        Position_Text.Font = Enum.Font.Arcade
 
        local Frame_Corner = Instance.new("UICorner", New_Frame)
        Frame_Corner.CornerRadius = UDim.new(1, 1)
    end
end
 
LoadFrames()
LoadTargetFrames()
 
function UpdateFrames(Output, Index)
    local Current_Frame = NN_Frames[Index]
    local rounded_X, rounded_Y = Round(Output[1], 2), Round(Output[2], 2)
    local X, Y = RelativePosToWorldPos(rounded_X, rounded_Y)
    Current_Frame.Position = UDim2.new(Output[1], 0, Output[2], 0)
    Current_Frame.TextBox.Text = "("..X..", "..Y..")"
end
 
function UpdateVisPosAndRotation()
    local pos = owner.Character.HumanoidRootPart.Position
    local angle = math.rad(owner.Character.HumanoidRootPart.Orientation.Y)
    local r = 8
    local x = -math.sin(angle)*r
    local z = -math.cos(angle)*r
    Frame_Part.Position = Vector3.new(x, 3, z) + pos
    Frame_Part.Orientation = Vector3.new(0, math.deg(angle)-180, 0)
end
 
function UpdateInfo()
    InfoText.Text = "Server FPS: "..(2/wait())
end
 
function UpdateSimFPS(SimFPS)
    FPSText.Text = "Simulation FPS: "..SimFPS
end
 
local start = tick()
while task.wait() do
    frame += 1
    _G.kainn = New_NN
    Frame_Part.Locked = true
    local Training_Data_Index = math.random(1, #Targets)
    local Inputs = Targets[Training_Data_Index][1]
    local Target_Index = Targets[Training_Data_Index][2]
    New_NN:BackProp(Inputs, Target_Index)
    local Output = New_NN:Forward(Inputs)
    UpdateFrames(Output, Training_Data_Index)
    UpdateVisPosAndRotation()
    UpdateInfo()
    UpdateSimFPS(frame/(tick()-start))
    TickCounter.Text = "Frame Counter: "..frame
end
