local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "StabbyHub",
    LoadingTitle = "By Stabby McStabFace",
    LoadingSubtitle = "Multi-Use Hub",
    Theme = "DarkBlue", -- DarkBlue, Green, Light, Default - more coming soon!
 
    DisableRayfieldPrompts = false,
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Movement")


Rayfield:Notify({
Title = "StabbyHub",
Content = "Notification Content",
Duration = 6.5,
Image = 4483362458,
Actions = { -- Notification Buttons

  Ignore = { -- Duplicate this table (or remove it) to add and remove buttons to the notification.
     Name = "Okay!",
     Callback = function()
        print("The user tapped Okay!")
     end
  },

},
})

local Button = MainTab:CreateToggle({
Name = "Infinite Jump",
Callback = function()
   --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
--Ensures this only runs once to save resources
_G.infinJumpStarted = true

--Notifies readiness
game.StarterGui:SetCore("SendNotification", {Title="Stabby Hub"; Text="Infinite Jump Activated!"; Duration=5;})

--The actual infinite jump
local plr = game:GetService('Players').LocalPlayer
local m = plr:GetMouse()
m.KeyDown:connect(function(k)
  if _G.infinjump then
     if k:byte() == 32 then
     humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
     humanoid:ChangeState('Jumping')
     wait()
     humanoid:ChangeState('Seated')
     end
  end
end)
end
end,
})

local Slider = MainTab:CreateSlider({
Name = "WalkSpeed",
Range = {16, 1000},
Increment = 1,
Suffix = "Speed",
CurrentValue = 16,
Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
end,
})

local MiscTab = Window:CreateTab("Misc")

local Button = MiscTab:CreateButton({
   Name = "ESP / Wallhack",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Stabby0McStabFace/StabbyHub/refs/heads/main/ESP.lua'))()
      end,
})

local Button = MiscTab:CreateButton({
   Name = "Owl Hub / Universal",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Stabby0McStabFace/StabbyHub/refs/heads/main/OwlHub.lua'))()
      end,
})

local Button = MiscTab:CreateButton({
   Name = "Project Lazarus 1",
   Callback = function()
      loadstring(game:HttpGet('https://pastebin.com/raw/AmdBs5Bc'))()
      end,
})

local Button = MiscTab:CreateButton({
   Name = "Project Lazarus 2",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Cazzanos/The-basement/main/Basement%20hub', true))()
      end,
})

local Button = MiscTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/latest.lua'))()
      end,
})

local Button = MiscTab:CreateButton({
Name = "Close Script",
Callback = function()
Rayfield:Destroy()
end,
})

-- Rayfield:Destroy() remove "--" to uncomment
