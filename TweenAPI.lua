local TeleportService = game:GetService('TweenService')

local TweenAPI = {}

function TweenAPI:TeleportToPart(Instance, Speed, Style)
    local TweenService, TweenInfo = TeleportService, TweenInfo.new(Speed, Enum.EasingStyle[Style])
    local TweenTeleport = TweenService:Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo, {CFrame = CFrame.new(Instance.Position)})
    TweenTeleport:Play()
end 

function TweenAPI:TeleportToPlayer(Player, Speed, Style)
    local TweenService, TweenInfo = TeleportService, TweenInfo.new(Speed, Enum.EasingStyle[Style])
    local TweenTeleport = TweenService:Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo, {CFrame = CFrame.new(game.Players[Player].Character.HumanoidRootPart.Position)})
    TweenTeleport:Play()
end 

TweenAPI:TeleportToPart(game:GetService('Workspace').Part, 1, 'Linear')
