local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/gracereals/miuhub/refs/heads/main/source.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "GraceHub",
   Icon = home, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Wait✋",
   LoadingSubtitle = "Grace",
   ShowText = "Grace", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Grace Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   }
}

local mainTab = Window:CreateTab("🏠Home🏠", nil) -- Title, Image
local mainSection = mainTab:CreateSection("Main")


Rayfield:Notify({
   Title = "Terima kasih sudah menggunakan script kita",
   Content = "Masih nyolong sih 🗿",
   Duration = 5,
   Image = nil,
})
local Slider = mainTab:CreateSlider({
   Name = "Speed",
   Range = {1, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.Walkspeed = (Value)
   end,
})
