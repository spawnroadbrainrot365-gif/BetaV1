local ReplicatedStorage = game:GetService("ReplicatedStorage")
local REP = ReplicatedStorage.RE

local NameEvent = REP["1RPNam1eTex1t"]
NameEvent:FireServer("RolePlayName", "- Yura Hub (Beta) النسخه التجريبيه -")
NameEvent:FireServer("RolePlayBio", "By M7D")

local ColorEvent = REP["1RPNam1eColo1r"]
ColorEvent:FireServer("PickingRPBioColor", Color3.new(0, 0.822759, 0.331484))

local RainbowActive = true

local function StartRainbowEffect()
    task.spawn(function()
        local hue = 0
        while RainbowActive do
            local color = Color3.fromHSV(hue, 1, 1)
            ColorEvent:FireServer("PickingRPNameColor", color)
            ColorEvent:FireServer("PickingRPBioColor", color)
            hue = hue + 0.05
            if hue > 1 then hue = 0 end
            task.wait()
        end
    end)
end

StartRainbowEffect()

task.wait(5)

RainbowActive = false

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/spawnroadbrainrot365-gif/library/refs/heads/main/Source.lua"))()

local Window = redzlib:MakeWindow({
    Title = "- Yura Hub Beta Version(النسخه التجريبيه) -",
    SubTitle = "by: M7D",
    LoadText = "by: M7D",
    Flags = "YuraHub_Broookhaven"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxthumb://type=Asset&id=70716189502808&w=420&h=420", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

local Notes = Window:MakeTab({ Title = "ملاحظات(مهمه)", Icon = "rbxassetid://10723415903" })

Notes:AddSection({ "ملاحظات عن السكربت:" })
Notes:AddParagraph({ "السكربت بيتا يعني نسخه تجريبيه " })
Notes:AddParagraph({ "ممكن تلقى مشاكل بس طبعا سكربت بيتا نسخه تجريبيه لين ماتنزل النسخه كامل" })

local InfoTab = Window:MakeTab({ Title = "الـمـطـوريـن", Icon = "rbxassetid://10723415903" })

InfoTab:AddSection({ "Devlopers :" })
InfoTab:AddParagraph({ "- M7D -" })

InfoTab:AddSection({ "- Tiktok -" })
InfoTab:AddParagraph({ "- M7D: m7dyura -" })

InfoTab:AddSection({ "- Roblox Account -" })
InfoTab:AddParagraph({ "- M7D Dev || روب : Te998Te  & M7D_Devloper-" })

local SocialTab = Window:MakeTab({ Title = "انفايت", Icon = "camera" })

SocialTab:AddDiscordInvite({
    Title = "Roblox",
    Desc = "يوزري روب",
    Logo = "rbxassetid://10747374131",  
    Invite = "M7D_Devloper او Te998Te"
})

SocialTab:AddDiscordInvite({
    Title = "Tiktok",
    Desc = "حسابي تيك",
    Logo = "rbxassetid://10747374131",  
    Invite = "m7dyura او if.not.true.then.returnn"
})

local Tab = Window:MakeTab({ Title = "اغاني الكل يسمعه", Icon = "music" })

Tab:AddSection({"اختر اغنيه"})

local audios = {
    {Name = "Yamete Kudasai", ID = 108494476595033},
    {Name = "Gritinho", ID = 5710016194},
    {Name = "Jumpscare Horroroso", ID = 85435253347146},
    {Name = "Áudio Alto", ID = 6855150757},
    {Name = "Ruído", ID = 120034877160791},
    {Name = "Jumpscare 2", ID = 110637995610528},
    {Name = "Risada Da Bruxa Minecraft", ID = 116214940486087},
    {Name = "The Boiled One", ID = 137177653817621},
    {Name = "Deitei Um Ave Maria Doido", ID = 128669424001766},
    {Name = "Mandrake Detected", ID = 9068077052},
    {Name = "Aaaaaaaaa", ID = 80156405968805},
    {Name = "AAAHHHH", ID = 9084006093},
    {Name = "amongus", ID = 6651571134},
    {Name = "Sus", ID = 6701126635},
    {Name = "Gritao AAAAAAAAA", ID = 5853668794},
    {Name = "UHHHHH COFFCOFF", ID = 7056720271},
    {Name = "SUS", ID = 7153419575},
    {Name = "Sonic.exe", ID = 2496367477},
    {Name = "Tubers93 1", ID = 270145703},
    {Name = "Tubers93 2", ID = 18131809532},
    {Name = "John's Laugh", ID = 130759239},
    {Name = "Nao sei KKKK", ID = 6549021381},
    {Name = "Grito", ID = 80156405968805},
    {Name = "audio estranho", ID = 7705506391},
    {Name = "AAAH", ID = 7772283448},
    {Name = "Gay, gay", ID = 18786647417},
    {Name = "Bat Hit", ID = 7129073354},
    {Name = "Nuclear Siren", ID = 675587093},
    {Name = "Sem ideia de nome KK", ID = 7520729342},
    {Name = "Grito 2", ID = 91412024101709},
    {Name = "Estora tímpano", ID = 268116333},
    {Name = "[ Content Deleted ]", ID = 106835463235574},
    {Name = "Toma Jack", ID = 132603645477541},
    {Name = "Pede ifood pede", ID = 133843750864059},
    {Name = "I Ghost The down", ID = 84663543883498},
    {Name = "Compre OnLine Na shoope", ID = 8747441609},
    {Name = "Uh Que Nojo", ID = 103440368630269},
    {Name = "Sai dai Lava Prato", ID = 101232400175829},
    {Name = "Seloko num compensa", ID = 78442476709262},
    {Name = "(NEW) Chimpanzini Bananini Funk", ID = 137148228908678},
    {Name = "(NEW) Candyland - Tobu", ID = 118939739460633},
    {Name = "(NEW) Meme do Dom pollo What the hell", ID = 100656590080703},
    {Name = "(NEW) não to entendendo nd meme estourado", ID = 7962533987},
}

local selectedAudioID

Tab:AddTextBox({
    Name = "حط كود الاغنيه",
    Description = "حط كود اغنيتك ",
    PlaceholderText = "ضع الايدي",
    Callback = function(value)
        selectedAudioID = tonumber(value)
    end
})

local audioNames = {}
for _, audio in ipairs(audios) do
    table.insert(audioNames, audio.Name)
end

Tab:AddDropdown({
    Name = "اختر الاغنيه",
    Description = "اغاني جاهزه",
    Options = audioNames,
    Default = audioNames[1],
    Flag = "selected_audio",
    Callback = function(value)
        for _, audio in ipairs(audios) do
            if audio.Name == value then
                selectedAudioID = audio.ID
                break
            end
        end
    end
})

local audioLoop = false

Tab:AddSection({"سبام صوت"})

local function playLoopedAudio()
    while audioLoop do
        if selectedAudioID then
            local args = {
                [1] = game:GetService("Workspace"),
                [2] = selectedAudioID,
                [3] = 1,
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(args))

            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. selectedAudioID
            sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            sound:Play()
        end
        task.wait(0.5)
    end
end

Tab:AddToggle({
    Name = "سبام للصوت",
    Description = "يسوي لوب",
    Default = false,
    Flag = "audio_loop",
    Callback = function(value)
        audioLoop = value
        if audioLoop then
            task.spawn(playLoopedAudio)
        end
    end
})

Tab:AddParagraph({"Info", "بيسوي ازعاج"})

local function playAudio()
    if selectedAudioID then
        local args = {
            [1] = game:GetService("Workspace"),
            [2] = selectedAudioID,
            [3] = 1,
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(args))

        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://" .. selectedAudioID
        sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        sound:Play()
    end
end

Tab:AddSection({"تشغيل الاغنيه"})

Tab:AddButton({"تشغيل الاغنيه", function()
    playAudio()
end})

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local audioID = 6314880174

local function Audio_All_ClientSide(ID)
    local function CheckFolderAudioAll()
        local FolderAudio = workspace:FindFirstChild("Audio all client")
        if not FolderAudio then
            FolderAudio = Instance.new("Folder")
            FolderAudio.Name = "Audio all client"
            FolderAudio.Parent = workspace
        end
        return FolderAudio
    end

    local function CreateSound(ID)
        if type(ID) ~= "number" then
            return nil
        end

        local Folder_Audio = CheckFolderAudioAll()
        if Folder_Audio then
            local Sound = Instance.new("Sound")
            Sound.SoundId = "rbxassetid://" .. ID
            Sound.Volume = 1
            Sound.Looped = false
            Sound.Parent = Folder_Audio
            Sound:Play()
            task.wait(1)
            Sound:Destroy()
        end
    end

    CreateSound(ID)
end

local function Audio_All_ServerSide(ID)
    if type(ID) ~= "number" then
        return nil
    end

    local GunSoundEvent = ReplicatedStorage:FindFirstChild("1Gu1nSound1s", true)
    if GunSoundEvent then
        GunSoundEvent:FireServer(workspace, ID, 1)
    end
end

Tab:AddToggle({
    Name = "صوت قويي ازعااج",
    Description = "صوت يشك الاذان ",
    Default = false,
    Flag = "audio_spam",
    Callback = function(value)
        getgenv().Audio_All_loop_fast = value

        while getgenv().Audio_All_loop_fast do
            Audio_All_ServerSide(audioID)
            task.spawn(function()
                Audio_All_ClientSide(audioID)
            end)
            task.wait(0.03)
        end
    end
})

Tab:AddParagraph({"Info", "- الاغنيه كلهم يسمعونهن  -"})

local TabN = Window:MakeTab({ Title = "رول بلاي", Icon = "user" })

local selectedRPName = ""

TabN:AddSection({"اسم الرول بلاي"})

local rpNames = {
    "『ᴍᴏʜᴀᴍᴇᴅ』",
    "『Nortn』",    
    "『M7D』",    
    "『ᴀʟɪ』",
    "『ᴀʜᴍᴇᴅ』",
    "『ᴋʜᴀʟɪᴅ』",
    "『ʏᴏᴜsᴇꜰ』",
    "『ᴏᴍᴀʀ』",
    "『ᴀʙᴅᴜʟʟᴀʜ』",
    "『ꜱᴀᴇᴅ』",
    "『ɴᴀsᴇʀ』",
    "『ʜᴀᴍᴢᴀ』",
    "『ᴢᴀʏᴇᴅ』",
    "『ʀᴀsʜᴇᴅ』",
    "『ᴍᴀᴊɪᴅ』",
    "『ꜱᴜʟᴛᴀɴ』",
    "『ꜰᴀɪꜱᴀʟ』",
    "『ɴᴀᴡᴀꜰ』",
    "『ᴍᴇsʜᴀʀɪ』",
    "『ᴀʙᴅᴜʟᴀᴢɪᴢ』",
    "『ᴛᴀʀɪǫ』",
    "『ʜᴜꜱsᴇɪɴ』",
}

TabN:AddDropdown({
    Name = "اختر اسم الرول بلاي",
    Description = "اختر اسم",
    Options = rpNames,
    Default = rpNames[1],
    Callback = function(value)
        selectedRPName = value
    end
})

TabN:AddButton({
    Name = "تطبيق",
    Description = "تغيير اسم الرول بلاي",
    Callback = function()
        if selectedRPName ~= "" then
            local Event = game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]
            Event:FireServer("RolePlayName", selectedRPName)
        end
    end
})

TabN:AddSection({"رينبو"})

local rainbowEnabled = false
local rainbowSpeed = 1
local rainbowConnection = nil

local ColorEvent = game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]

local function StartRainbow()
    if rainbowConnection then
        rainbowConnection:Disconnect()
        rainbowConnection = nil
    end
    
    rainbowConnection = game:GetService("RunService").Heartbeat:Connect(function()
        if rainbowEnabled then
            local hue = (tick() * rainbowSpeed) % 1
            local color = Color3.fromHSV(hue, 1, 1)
            ColorEvent:FireServer("PickingRPNameColor", color)
            ColorEvent:FireServer("PickingRPBioColor", color)
        end
    end)
end

local function StopRainbow()
    if rainbowConnection then
        rainbowConnection:Disconnect()
        rainbowConnection = nil
    end
end

TabN:AddToggle({
    Name = "تفعيل الرينبو",
    Description = "يخلي اسمك وبايو ملونين",
    Default = false,
    Callback = function(value)
        rainbowEnabled = value
        if rainbowEnabled then
            StartRainbow()
        else
            StopRainbow()
        end
    end
})

TabN:AddSlider({
    Name = "سرعة الرينبو",
    Description = "",
    Min = 0.1,
    Max = 999999999,
    Default = 1,
    Callback = function(value)
        rainbowSpeed = value
    end
})

TabN:AddTextBox({
    Name = "سرعة الرينبو(بالكتابه) ",
    Description = "اكتب رقم",
    PlaceholderText = "مثال: 10",
    Callback = function(value)
        local num = tonumber(value)
        if num then
            rainbowSpeed = math.clamp(num, 0.1, 60)
        end
    end
})

TabN:AddSection({"لوب اسماء"})

local nameText = ""
local nameLoopEnabled = false
local nameLoopSpeed = 1
local nameLoopThread = nil
local currentStep = 0
local namesList = {}

local NameEvent = game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]

local function GenerateNameSequence(input)
    local sequence = {}
    local len = #input
    if len == 0 then return sequence end
    
    for i = 1, len do
        table.insert(sequence, string.sub(input, 1, i))
    end
    for i = len - 1, 2, -1 do
        table.insert(sequence, string.sub(input, 1, i))
    end
    table.insert(sequence, "")
    
    return sequence
end

local function UpdateNameLoop()
    if not nameLoopEnabled then return end
    
    if #namesList == 0 then
        if nameText ~= "" then
            namesList = GenerateNameSequence(nameText)
            currentStep = 1
        else
            return
        end
    end
    
    if currentStep > #namesList then
        currentStep = 1
    end
    
    local currentName = namesList[currentStep]
    NameEvent:FireServer("RolePlayName", currentName)
    
    currentStep = currentStep + 1
end

local function StartNameLoop()
    if nameLoopThread then
        nameLoopThread:Disconnect()
        nameLoopThread = nil
    end
    
    namesList = {}
    currentStep = 1
    
    if nameText ~= "" then
        namesList = GenerateNameSequence(nameText)
    end
    
    nameLoopThread = game:GetService("RunService").Heartbeat:Connect(function()
        if nameLoopEnabled then
            UpdateNameLoop()
            task.wait(1 / nameLoopSpeed)
        end
    end)
end

local function StopNameLoop()
    if nameLoopThread then
        nameLoopThread:Disconnect()
        nameLoopThread = nil
    end
end

TabN:AddTextBox({
    Name = "حط الاسم",
    Description = "اكتب اسمك هنا",
    PlaceholderText = "زي: محمد",
    Callback = function(value)
        nameText = value
        namesList = {}
        currentStep = 1
        if nameText ~= "" then
            namesList = GenerateNameSequence(nameText)
        end
    end
})

TabN:AddToggle({
    Name = "تفعيل لوب الاسماء ",
    Description = "",
    Default = false,
    Callback = function(value)
        nameLoopEnabled = value
        if nameLoopEnabled then
            StartNameLoop()
        else
            StopNameLoop()
        end
    end
})

TabN:AddSlider({
    Name = "سرعة اللوب",
    Description = "",
    Min = 0.1,
    Max = 999999999,
    Default = 1,
    Callback = function(value)
        nameLoopSpeed = value
    end
})

TabN:AddTextBox({
    Name = "سرعة اللوب(عبر كتابه) ",
    Description = "اكتب رقم ",
    PlaceholderText = "مثال: 2",
    Callback = function(value)
        local num = tonumber(value)
        if num then
            nameLoopSpeed = math.clamp(num, 0.1, 60)
        end
    end
})

TabN:AddSection({"سبام اسماء"})

local textValues = {}
local multiLoopEnabled = false
local multiLoopSpeed = 1
local multiLoopThread = nil
local multiCurrentIndex = 1

for i = 1, 5 do
    TabN:AddTextBox({
        Name = "الاسم " .. i,
        Description = "اكتب الاسم " .. i,
        PlaceholderText = " " .. i,
        Callback = function(value)
            textValues[i] = value
        end
    })
end

local function UpdateMultiLoop()
    if not multiLoopEnabled then return end
    
    local validNames = {}
    for i = 1, 5 do
        if textValues[i] and textValues[i] ~= "" then
            table.insert(validNames, textValues[i])
        end
    end
    
    if #validNames == 0 then return end
    
    if multiCurrentIndex > #validNames then
        multiCurrentIndex = 1
    end
    
    local currentName = validNames[multiCurrentIndex]
    NameEvent:FireServer("RolePlayName", currentName)
    
    multiCurrentIndex = multiCurrentIndex + 1
end

local function StartMultiLoop()
    if multiLoopThread then
        multiLoopThread:Disconnect()
        multiLoopThread = nil
    end
    
    multiCurrentIndex = 1
    
    multiLoopThread = game:GetService("RunService").Heartbeat:Connect(function()
        if multiLoopEnabled then
            UpdateMultiLoop()
            task.wait(1 / multiLoopSpeed)
        end
    end)
end

local function StopMultiLoop()
    if multiLoopThread then
        multiLoopThread:Disconnect()
        multiLoopThread = nil
    end
end

TabN:AddToggle({
    Name = "تشغيل سبام اسماء",
    Description = "",
    Default = false,
    Callback = function(value)
        multiLoopEnabled = value
        if multiLoopEnabled then
            StartMultiLoop()
        else
            StopMultiLoop()
        end
    end
})

TabN:AddSlider({
    Name = "سرعة السبام ",
    Description = "",
    Min = 0.1,
    Max = 999999999,
    Default = 1,
    Callback = function(value)
        multiLoopSpeed = value
    end
})

TabN:AddTextBox({
    Name = "سرعة السبام(بالكتابه)",
    Description = "اكتب رقم ",
    PlaceholderText = "مثال: 10",
    Callback = function(value)
        local num = tonumber(value)
        if num then
            multiLoopSpeed = math.clamp(num, 0.1, 60)
        end
    end
})

TabN:AddParagraph({"😎"})

local Fe = Window:MakeTab({ Title = "FE متعه", Icon = "rbxassetid://10723426595" })

local LocalPlayer = game.Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local isCollecting = false
local isDetonating = false
local collectThread = nil
local detonateThread = nil
local originalPos = nil
local originalPos2 = nil

local function FindBomb()
    local WorkspaceCom = Workspace:FindFirstChild("WorkspaceCom")
    if WorkspaceCom then
        local CriminalWeapons = WorkspaceCom:FindFirstChild("001_CriminalWeapons")
        if CriminalWeapons then
            local GiveTools = CriminalWeapons:FindFirstChild("GiveTools")
            if GiveTools then
                local Bomb = GiveTools:FindFirstChild("Bomb")
                if Bomb then return Bomb end
            end
        end
    end
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj.Name == "Bomb" and obj:FindFirstChild("ClickDetector") then
            return obj
        end
    end
    return nil
end

local function SavePosition()
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    if RootPart then
        originalPos = RootPart.CFrame
        originalPos2 = Character:GetPivot()
    end
end

local function ReturnToPosition()
    if not originalPos then return end
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    if RootPart then
        RootPart.CFrame = originalPos
        Character:SetPrimaryPartCFrame(originalPos2)
    end
end

local function CollectBombs()
    if isCollecting then return end
    isCollecting = true
    
    local Bomb = FindBomb()
    if not Bomb then
        isCollecting = false
        return
    end
    
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    if not RootPart then
        isCollecting = false
        return
    end
    
    if not originalPos then
        originalPos = RootPart.CFrame
        originalPos2 = Character:GetPivot()
    end
    
    RootPart.CFrame = Bomb.CFrame * CFrame.new(0, 2, 0)
    task.wait(0.5)
    
    local ClickDetector = Bomb:FindFirstChild("ClickDetector")
    if ClickDetector then
        for i = 1, 10 do
            pcall(function()
                fireclickdetector(ClickDetector)
            end)
            task.wait(0.05)
        end
    end
    
    isCollecting = false
end

local function StartCollecting()
    if collectThread then return end
    isCollecting = false
    collectThread = task.spawn(function()
        while true do
            if not isCollecting then
                CollectBombs()
            end
            task.wait(1)
        end
    end)
end

local function StopCollecting()
    if collectThread then
        task.cancel(collectThread)
        collectThread = nil
    end
    isCollecting = false
end

local function StartDetonation()
    if detonateThread then return end
    
    local DetonateRE = ReplicatedStorage:FindFirstChild("RE")
    if DetonateRE then
        DetonateRE = DetonateRE:FindFirstChild("1Blo1wBomb1sServe1r")
    end
    
    if not DetonateRE then return end
    
    local detonateIdentifier = "Bomb" .. LocalPlayer.Name
    
    detonateThread = task.spawn(function()
        while true do
            pcall(function()
                DetonateRE:FireServer(detonateIdentifier)
            end)
            task.wait(0.05)
        end
    end)
end

local function StopDetonation()
    if detonateThread then
        task.cancel(detonateThread)
        detonateThread = nil
    end
end

Fe:AddSection({ " تجميع القنابل" })

Fe:AddToggle({
    Name = "تجميع القنابل",
    Desc = "لما تبي توقف تجميع طفيه",
    Default = false,
    Callback = function(state)
        if state then
            SavePosition()
            StartCollecting()
        else
            StopCollecting()
        end
    end
})

Fe:AddSection({ " تفجير القنابل" })

Fe:AddToggle({
    Name = "تفجير القنابل",
    Desc = "يفجر القنابل كلها(يبين)",
    Default = false,
    Callback = function(state)
        if state then
            ReturnToPosition()
            StartDetonation()
        else
            StopDetonation()
        end
    end
})

Fe:AddSection({ "لما تجي تفعل تفجير قنابل بعدها لازم تدوس على الارض عشان يفجر واذا فجر و بعدها وقف تفجير الغي القنبله(لاتشيلها من ال حقيبه) وارجع امسكها ودوس على الارض" })

local SkyboxTab = Window:MakeTab({
    Title = "سكاي بوكس",
    Icon = "rbxassetid://10709782845"
})

SkyboxTab:AddSection({ "سكاي بوكس V1" })

local skyboxEnabled = false
local skyboxTrack = nil
local rigidTrack = nil
local savedNukeBody = {}

local function stopAllAnimations()
    if rigidTrack then
        pcall(function()
            rigidTrack:Stop()
            rigidTrack:Destroy()
        end)
        rigidTrack = nil
    end
    
    if skyboxTrack then
        pcall(function()
            skyboxTrack:Stop()
            skyboxTrack:Destroy()
        end)
        skyboxTrack = nil
    end
    
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            local animator = humanoid:FindFirstChild("Animator")
            if animator then
                for _, track in pairs(animator:GetPlayingAnimationTracks()) do
                    if track.Animation then
                        local animId = track.Animation.AnimationId
                        if animId == "rbxassetid://70883871260184" or animId == "rbxassetid://3695333486" then
                            pcall(function()
                                track:Stop()
                            end)
                        end
                    end
                end
            end
        end
    end
end

SkyboxTab:AddToggle({
    Name = "سكاي بوكس V1",
    Default = false,
    Callback = function(value)
        skyboxEnabled = value
        
        if value then
            local player = game.Players.LocalPlayer
            local character = player.Character
            
            if character then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local description = humanoid:GetAppliedDescription()
                    
                    savedNukeBody = {
                        Torso = description.Torso,
                        RightArm = description.RightArm,
                        LeftArm = description.LeftArm,
                        RightLeg = description.RightLeg,
                        LeftLeg = description.LeftLeg,
                        Head = description.Head
                    }
                    
                    task.wait(0.2)
                    
                    local args = {
                        [1] = 123402086843885,
                        [2] = 100839513065432,
                        [3] = 78300682916056,
                        [4] = 86276701020724,
                        [5] = 78409653958165,
                        [6] = 15093053680
                    }
                    
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(args)
                    end)
                    
                    task.wait(0.3)
                    
                    local newAnim = Instance.new("Animation")
                    newAnim.AnimationId = "rbxassetid://70883871260184"
                    
                    skyboxTrack = humanoid:LoadAnimation(newAnim)
                    skyboxTrack.Priority = Enum.AnimationPriority.Action4
                    skyboxTrack:Play(0.1, 1, 0.01)
                    
                    task.wait(0.5)
                    
                    local plankAnim = Instance.new("Animation")
                    plankAnim.AnimationId = "rbxassetid://3695333486"
                    rigidTrack = humanoid:LoadAnimation(plankAnim)
                    rigidTrack.Priority = Enum.AnimationPriority.Movement
                    rigidTrack:Play(0.1, 1, 0)
                end
            end
        else
            stopAllAnimations()
            
            task.wait(0.2)
            
            if next(savedNukeBody) then
                local player = game.Players.LocalPlayer
                local character = player.Character
                
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        local restoreBody = {
                            [1] = savedNukeBody.Torso,
                            [2] = savedNukeBody.RightArm,
                            [3] = savedNukeBody.LeftArm,
                            [4] = savedNukeBody.RightLeg,
                            [5] = savedNukeBody.LeftLeg,
                            [6] = savedNukeBody.Head
                        }
                        
                        local args = {
                            [1] = restoreBody
                        }
                        
                        pcall(function()
                            game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))
                        end)
                        
                        savedNukeBody = {}
                    end
                end
            end
        end
    end
})