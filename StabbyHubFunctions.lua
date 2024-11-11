local CheatMenu = {}

function CheatMenu.enableSpeedBoost(player)
    if player and player.Character then
        player.Character.Humanoid.WalkSpeed = 50
    end
end

function CheatMenu.disableSpeedBoost(player)
    if player and player.Character then
        player.Character.Humanoid.WalkSpeed = 16
    end
end

function CheatMenu.enableJumpPower(player)
    if player and player.Character then
        player.Character.Humanoid.JumpPower = 100
    end
end

function CheatMenu.disableJumpPower(player)
    if player and player.Character then
        player.Character.Humanoid.JumpPower = 50
    end
end

function CheatMenu.enableGodMode(player)
    if player and player.Character then
        player.Character.Humanoid.Health = math.huge
    end
end

function CheatMenu.disableGodMode(player)
    if player and player.Character then
        player.Character.Humanoid.Health = 100
    end
end

return CheatMenu
