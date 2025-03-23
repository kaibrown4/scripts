type Track = {
	notes: {{number}};
	tuning: number;
	inc: number;
	start: number;
	length: number;
	p: number;
}

local instruments = {
	"sine";
	"square";
	"sawtooth";
	"triangle";
	"bass";
	"piano";
}

local sounds = {
	sine = 146750669;
	square = 9040512330;
	sawtooth = 9040512075;
	triangle = 9085536418;
	bass = 12221944;
	piano = 584691395;
}

local durations = {
	sine = 1.5;
	square = 1.5;
	sawtooth = 1.5;
	triangle = 1.5;
	bass = 1;
}

local t1: Track = {
	notes = {
		[0] = {73, 57};
		[2] = {68, 61};
		[4] = {73, 64};
		[6] = {68, 61};
		[8] = {73, 64};
		[10] = {61, 68};
		[12] = {73, 57};
		[14] = {61, 68};
		[16] = {73, 64};
		[18] = {61, 68};
		[20] = {73, 64};
		[22] = {68, 61};
		[24] = {66, 54};
		[26] = {58, 64};
		[28] = {68, 61};
		[30] = {58};
		[32] = {61, 64};
		[94] = {59};
		[34] = {66, 58};
		[92] = {68, 64};
		[36] = {71, 54};
		[90] = {59};
		[38] = {70, 58};
		[88] = {69, 64};
		[40] = {71, 61};
		[86] = {59};
		[42] = {73, 58};
		[84] = {56, 71};
		[44] = {70, 61};
		[82] = {61, 73};
		[46] = {58, 66};
		[80] = {71, 64};
		[48] = {73, 50};
		[78] = {69, 61};
		[50] = {66, 54};
		[76] = {73, 64};
		[52] = {73, 57};
		[74] = {69, 61};
		[54] = {66, 54};
		[72] = {57, 73};
		[56] = {73, 57};
		[70] = {53};
		[58] = {66, 54};
		[68] = {74, 57};
		[60] = {73, 49};
		[66] = {65, 53};
		[62] = {65, 53};
		[64] = {73, 57};
	};
	tuning = -55;
	inc = 2;
	start = 0;
	length = 94;
	p = 1/3;
}

local t2: Track = {
	notes = {     
		[1] = {48};
		[2] = {55, 72, 48, 51};
		[3] = {51, 48};
		[4] = {55, 67, 48};
		[5] = {55, 48};
		[6] = {55, 48, 60};
		[7] = {60, 48};
		[8] = {48, 55, 72};
		[9] = {48};
		[10] = {55, 48, 67};
		[11] = {48};
		[12] = {55, 60, 48};
		[13] = {48};
		[14] = {55, 72, 48};
		[15] = {48};
		[16] = {58, 63, 51};
		[17] = {51};
		[18] = {58, 75, 55, 51};
		[19] = {55, 51};
		[20] = {51, 70, 58};
		[21] = {58, 70, 51};
		[22] = {51, 58, 63};
		[23] = {63, 51};
		[24] = {51, 58, 75};
		[25] = {51};
		[26] = {51, 58, 70};
		[27] = {70, 51};
		[28] = {51, 58, 63};
		[29] = {51};
		[30] = {75, 58, 51};
		[31] = {75, 51};
		[32] = {57, 62, 50};
		[33] = {62, 50};
		[34] = {57, 54, 74, 50};
		[35] = {50, 54, 74};
		[36] = {69, 50, 57};
		[37] = {69, 57, 50};
		[38] = {57, 50, 62};
		[39] = {62, 50};
		[40] = {50, 57, 74};
		[41] = {50};
		[42] = {69, 50, 57};
		[43] = {69, 50};
		[44] = {50, 57, 62};
		[45] = {50};
		[46] = {51, 58, 74};
		[47] = {57, 50};
		[48] = {49, 56, 61};
		[49] = {61, 49};
		[50] = {49, 73, 53, 56};
		[51] = {53, 49, 73};
		[52] = {56, 68, 49};
		[53] = {49, 68, 56};
		[54] = {49, 56, 61};
		[55] = {61, 49};
		[56] = {56, 73, 49};
		[57] = {73, 49};
		[58] = {49, 56, 68};
		[59] = {68, 49};
		[60] = {49, 56, 61};
		[61] = {61, 49};
		[62] = {49, 73, 56};
		[63] = {49, 73};
		[0] = {60, 48, 55};
	};
	tuning = -55;
	inc = 1;
	start = 0;
	length = 63;
	p = 1/8;
}

local t3: Track = {
	notes = {
		[0] = {74};
		[4] = {84, 72};
		[70] = {81};
		[72] = {70, 82, 58};
		[76] = {65, 82, 58, 70};
		[78] = {84};
		[16] = {74, 62};
		[126] = {74};
		[18] = {86, 74};
		[124] = {71, 55, 67, 62};
		[20] = {84, 72};
		[122] = {67};
		[22] = {80, 68};
		[120] = {67, 55};
		[88] = {57, 69};
		[118] = {71};
		[26] = {67, 79};
		[116] = {55, 74, 67, 59};
		[28] = {77, 65};
		[114] = {79};
		[30] = {79, 67};
		[112] = {67, 55, 83};
		[96] = {56, 68};
		[110] = {82};
		[108] = {80, 68, 63, 56};
		[104] = {80, 56, 68};
		[36] = {84, 72};
		[102] = {79};
		[38] = {81, 69};
		[100] = {80, 60, 56, 68};
		[40] = {83, 71};
		[94] = {76};
		[92] = {64, 57, 73, 69};
		[90] = {69};
		[44] = {79, 67};
		[86] = {73};
		[46] = {77, 65};
		[84] = {57, 61, 69, 76};
		[48] = {74, 62};
		[82] = {81};
		[50] = {86, 74};
		[80] = {69, 57, 85};
		[52] = {84, 72};
		[6] = {81, 69};
		[54] = {81, 69};
		[8] = {83, 71};
		[56] = {79, 67};
		[14] = {77, 65};
		[58] = {77, 65};
		[12] = {79, 67};
		[60] = {79, 67};
		[64] = {58, 70};
		[62] = {81, 69};
		[68] = {70, 58, 62, 82};
	};
	tuning = -70;
	inc = 2;
	start = 0;
	length = 126;
	p = 1/4;
}

local t4: Track = {
	notes = {
		[0] = {59};
		[126] = {66};
		[2] = {64};
		[124] = {67};
		[4] = {66};
		[122] = {69};
		[6] = {59};
		[120] = {64};
		[8] = {64};
		[118] = {59};
		[10] = {66};
		[116] = {69};
		[12] = {59};
		[114] = {64};
		[14] = {64};
		[112] = {59};
		[16] = {59};
		[110] = {64};
		[18] = {64};
		[108] = {59};
		[20] = {66};
		[106] = {69};
		[22] = {59};
		[104] = {64};
		[24] = {64};
		[102] = {59};
		[26] = {66};
		[100] = {69};
		[28] = {59};
		[98] = {64};
		[30] = {64};
		[96] = {59};
		[32] = {59};
		[94] = {64};
		[34] = {64};
		[92] = {59};
		[36] = {67};
		[90] = {66};
		[38] = {59};
		[88] = {64};
		[40] = {64};
		[86] = {59};
		[42] = {67};
		[84] = {66};
		[44] = {59};
		[82] = {64};
		[46] = {64};
		[80] = {59};
		[48] = {59};
		[78] = {64};
		[50] = {64};
		[76] = {59};
		[52] = {67};
		[74] = {66};
		[54] = {59};
		[72] = {64};
		[56] = {64};
		[70] = {59};
		[58] = {67};
		[68] = {66};
		[60] = {59};
		[66] = {64};
		[62] = {64};
		[64] = {59};
	};
	tuning = -60;
	inc = 2;
	start = 0;
	length = 126;
	p = 1/8;
}

local track = 2
local instr = "sine"
track, instr = ...
track = tonumber(track) or 2
instr = tostring(instr) or "sine"
local Nshift = 0
local freqshift = 0

local tracks: {Track} = {t1, t2, t3, t4}
local sel: Track = tracks[track]

local char = owner.Character
local humroot = char.HumanoidRootPart

local basepart = Instance.new("Part", script)
local sgui = Instance.new("SurfaceGui", basepart)
local backgr = Instance.new("Frame", sgui)
local hanger = Instance.new("Frame", sgui)
local border = Instance.new("UIStroke", backgr)
local gridline = Instance.new("Frame", backgr)
local uill = Instance.new("UIListLayout", backgr)
local backgrad = Instance.new("UIGradient", backgr)
local infotext = Instance.new("TextLabel", sgui)

basepart.Anchored = true
basepart.CFrame = humroot.CFrame * CFrame.new(Vector3.zAxis * -5 + Vector3.yAxis*2)
basepart.Size = Vector3.new(10, 7, 1)
basepart.Transparency = 1
basepart.CanCollide = false

sgui.Face = Enum.NormalId.Back
sgui.Adornee = basepart

backgr.Size = UDim2.fromScale(1,1)
backgr.BackgroundColor3 = Color3.fromRGB(75, 75, 114)
backgr.ZIndex = -100

hanger.BackgroundTransparency = 1
hanger.Size = UDim2.fromScale(1,1)
hanger.Position = UDim2.fromScale(0,0)
hanger.BorderSizePixel = 0
hanger.ZIndex = -50

border.Color = Color3.new(0,0,0)
border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
border.Thickness = 10
border.LineJoinMode = Enum.LineJoinMode.Round

gridline.BorderSizePixel = 0
gridline.Size = UDim2.fromScale(1, 0.002)
gridline.BackgroundColor3 = Color3.fromRGB(0,0,0)
gridline.AnchorPoint = Vector2.one*0.5
gridline.Position = UDim2.fromScale(0.5, 0.5)
gridline.BackgroundTransparency = 0.6
gridline.ZIndex = 0
gridline.Name = "gl1"

uill.Wraps = false
uill.FillDirection = Enum.FillDirection.Vertical
uill.VerticalFlex = Enum.UIFlexAlignment.SpaceAround

backgrad.Color = ColorSequence.new(backgr.BackgroundColor3, Color3.new(1,1,1))
backgrad.Rotation = -90
backgrad.Offset = Vector2.yAxis*0.5

infotext.Position = UDim2.fromScale(0, 0.85)
infotext.Size = UDim2.fromScale(0.5, 0.15)
infotext.BackgroundTransparency = 1
infotext.TextXAlignment = Enum.TextXAlignment.Left
infotext.TextYAlignment = Enum.TextYAlignment.Top
infotext.Font = Enum.Font.FredokaOne
--infotext.FontFace.Bold = true
infotext.TextColor3 = Color3.new(1,1,1)
infotext.TextScaled = true
infotext.Text = "Track "..track.."\n"
infotext.Text ..= "Instrument: "..instr.."\n"
infotext.Text ..= "Progress: 0%"

local noteheight = 1
local notewidth = 1/16
local notes = 0
local notet = {}
local counter = 1

local loading = Instance.new("TextLabel", sgui)
local _note = Instance.new("Frame", script)
local _noteborder = Instance.new("UIStroke", _note)

loading.Size = UDim2.fromScale(1,1)
loading.Position = UDim2.fromScale(0,0)
loading.BackgroundColor3 = Color3.new(0,0,0)
loading.BackgroundTransparency = 0.7
loading.TextColor3 = Color3.new(1,1,1)
loading.TextScaled = true
loading.Text = "(0/???)"
loading.Visible = false
loading.ZIndex = 100

_noteborder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_noteborder.Color = Color3.new(0,0,0)

function getrange(track: Track)
	local max = -1
	local min = 1000
	for TIME = track.start, track.length, track.inc do
		local cur = track.notes[TIME]
		if not cur then continue end
		for note = 1,#cur do
			local val = cur[note]
			if val > max then max = val end
			if val < min then min = val end
		end
	end
	return min, max
end

local min, max = getrange(sel)
print(min, max)

function newgridline()
	counter += 1
	local n = gridline:Clone()
	n.Parent = backgr
	n.Name = "gl"..counter
	noteheight = 1/counter
end

function newnote(pos, pitch)
	local clone = _note:Clone()
	local col = Color3.fromHSV((pitch/12 + 0.2) % 1, 0.7, 0.8)
	
	clone.Parent = hanger
	clone.Position = UDim2.fromScale(pos/sel.inc * notewidth, (max-pitch)*noteheight)
	clone.BackgroundColor3 = col
	clone.Name = "t"..pos.."p"..pitch
	
	clone.UIStroke.Color = Color3.new(col.R*0.9, col.G*0.9, col.B*0.9)
	
	table.insert(notet, clone)
	return clone
end

function fitgridlines()
	for i = 1,max-min do
		newgridline()
		task.wait()
	end
end

function addnotes()
	for X = sel.start, sel.length, sel.inc do
		local cur = sel.notes[X]
		if not cur then continue end
		for Y = 1,#cur do
			newnote(X, cur[Y])
		end
		loading.Text = "("..(X/sel.inc+1).." / ".. (sel.length/sel.inc+1) ..")"
		task.wait()
	end
end

function loadsounds()
	loading.Text = "Sounds loaded: (0 / "..(#instruments)..")"
	loading.Visible = true
	for i = 1,#instruments do
		local name = instruments[i]
		local duration = durations[name]
		local id = sounds[name]
		
		local sound = Instance.new("Sound", script)
		sound.PlaybackRegionsEnabled = true
		--sound.PlaybackRegion = NumberRange.new(0, p*duration)
		sound.Looped = true
		sound.SoundId = 'rbxassetid://'..id
		sound.Name = instr
		sound.PlayOnRemove = false
		
		sounds[name] = sound
		
		if not sound.IsLoaded then
			sound.Loaded:Wait()
		end
		loading.Text = "Sounds loaded: ("..i.." / "..(#instruments)..")"
	end
	task.wait(1)
	loading.Visible = false
end

function load()
	loading.Text = "(0 / ".. (sel.length/sel.inc+1) ..")"
	loading.Visible = true
	fitgridlines()
	
	_note.Size = UDim2.fromScale(notewidth, noteheight)
	_note.BackgroundColor3 = Color3.new(1,1,1)
	_note.BorderSizePixel = 0
	
	addnotes()
	
	loading.Visible = false
end

function tofrequency(pitch)
	return 2^((pitch + sel.tuning + Nshift)/12) + freqshift
end

function playnote(pitch)
	local freq = tofrequency(pitch)
	local p = sel.p
	
	local sound = sounds[instr]:Clone()
	sound.Parent = basepart
	sound.Pitch = freq
	
	local loops = p*durations[instr]*freq/sound.TimeLength
	if loops < 1 then
		sound.PlaybackRegion = NumberRange.new(0, p*durations[instr]*freq)
		sound.LoopRegion = NumberRange.new(0, p*durations[instr]*freq)
		
		local con
		con = sound.DidLoop:Connect(function(id, numloops) sound:Stop() sound:Destroy() con:Disconnect() end)
	else
		local connection
		connection = sound.DidLoop:Connect(function(id, numloops)
			if numloops == math.floor(loops)+1 then sound:Stop() sound:Destroy() connection:Disconnect() end
			if numloops == math.floor(loops) then
				local per = (loops % 1) * sound.TimeLength
				sound.PlaybackRegion = NumberRange.new(0, per)
				sound.LoopRegion = NumberRange.new(0, per)
			end
		end)
	end
	
	sound.Volume = 0.06
	sound:Play()
	
	return sound
end

function a(ind)
	local note = notet[ind]
	local h,s,v = note.BackgroundColor3:ToHSV()
	note.BackgroundColor3 = Color3.fromHSV(h, 0.01, 0.8)
end

function b(ind)
	local note = notet[ind]
	local h,s,v = note.BackgroundColor3:ToHSV()
	note.BackgroundColor3 = Color3.fromHSV(h, 0.7, 1)
end

function play(during: (...any) -> nil?)
	during = during or function() end
	
	local ind = 0
	local prevlen
	for TIME = sel.start, sel.length, sel.inc do
		if prevlen then
			for i = 0,prevlen-1 do
				b(ind-i)
			end
		end
		
		local notes = sel.notes[TIME]
		
		if notes then
			during(TIME, notes)
			for i = 1,#notes do
				playnote(notes[i])
				a(ind+i)
			end

			ind += #notes
			prevlen = #notes
		end
		
		task.wait(sel.p)
		
		if TIME == sel.length then for i = 0, prevlen-1 do b(ind-i) end end
	end
end

function scroll(start)
	local tlen = (sel.length - sel.start)/sel.inc + 1
	local en = notewidth*tlen
	if tlen > 16 then
		task.wait(8*sel.p)
		hanger:TweenPosition(UDim2.fromScale(-en+1,0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, (sel.p*tlen-16*sel.p)*1.06)
	end
end

function updinfo(TIME)
	infotext.Text = "Track "..track.."\n"
	infotext.Text ..= "Instrument: "..instr.."\n"
	infotext.Text ..= "Progress: "..math.round(TIME/sel.length*100).."%"
end

owner.Chatted:Connect(function(msg)
	if msg:sub(1,8) == "nshift: " then
		local num = tonumber(msg:sub(9))
		if not num then
			warn("invalid argument. nshift was not changed.")
		else
			Nshift = num
		end
	elseif msg:sub(1,8) == "fshift: " then
		local num = tonumber(msg:sub(9))
		if not num then
			warn("invalid argument. fshift was not changed.")
		else
			freqshift = num
		end
	elseif msg:sub(1,7) == "instr: " then
		local ainstr = msg:sub(8)
		if not durations[ainstr] then
			warn("invalid argument. instrument not found.")
		else
			instr = ainstr
		end
	end
end)

loadsounds()
load()
while true do
	task.spawn(scroll, os.clock())
	play(updinfo)
	hanger.Position = UDim2.fromScale(0,0)
	task.wait()
end
