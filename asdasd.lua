-- Auto Buy Ticket
if Options.AutoBuyTicket.Value then
    autoBuyTicketEnabled = true
else
    autoBuyTicketEnabled = false
end

-- Auto Rank Farm
if Options.AutoRankToggle.Value then
    autoRankEnabled = true
else
    autoRankEnabled = false
end

-- Return After Dungeon
if Options.ReturnAfterDungeon.Value then
    returnToDungeonPosition = true
else
    returnToDungeonPosition = false
end

-- Auto Farm Castle
if Options.CastleFarm.Value then
    if game.PlaceId == 128336380114944 then
        castleFarmEnabled = true
        task.spawn(teleportCastleFarmMain)
    else
        castlekill = {}
    end
end

-- Auto Farm Dungeon
if Options.TeleportMobs.Value then
    if game.PlaceId == 128336380114944 then
        teleportEnabled = true
        task.spawn(teleportDungeon)
    end
else
    dungeonkill = {}
end
