local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("CASTY SCRIPT", "RJTheme3")

local Tab = Window:NewTab("Main Menu")

local Section = Tab:NewSection("Menu")


Section:NewSlider("SpeedHack", "CASTY#6301", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("LowGravity", "ButtonInfo", function()
    game.Workspace.Gravity = 50
end)

Section:NewSlider("BigJump", "SliderInfo", 200, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local lol = Window:NewTab("Esp Menu")

local Section = lol:NewSection("Menu")


Section:NewButton("EspBox", "ButtonInfo", function()
while wait(0.5) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(255,48,48)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)

local Ok = Window:NewTab("Settings Menu")

local Section = Ok:NewSection("Menu")

Section:NewButton("Discord Developer", "CASTY#6301", function()
loadstring(game:HttpGet("https://discord.gg/cteXWqSHrn"))()
end)

Section:NewButton("Telegram Developer", "@castycheat", function()
loadstring(game:HttpGet("https://t.me/casty_cheats"))()
end)


