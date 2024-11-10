local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local tpl = CFrame.new(-570, 24, -2883)

plr.CharacterAdded:Connect(function(char)
    repeat
        task.wait()
        
        local powerOutput = game.Workspace.Live:FindFirstChild("EMBXDIED")
        if powerOutput then
            powerOutput = powerOutput:FindFirstChild("PowerOutput")
        end
        
        if char:FindFirstChild("HumanoidRootPart") then
            char.HumanoidRootPart.CFrame = tpl
        end
    until powerOutput ~= nil
end)
