local tequilaState = false

--When player spawned send him update
AddEventHandler(triggerName('playerSpawned'), function()
    TriggerClientEvent(triggerName('sync'), source, tequilaState)
end)

RegisterCommand('tequilaoff', function()
    if IsPlayerAceAllowed(source, "rcore_tequila_music_off.tequilaoff") then
        tequilaState = true
        TriggerClientEvent(triggerName('sync'), -1, true)
    else
        TriggerClientEvent("chatMessage", source, "^1Insufficient Permissions.")
    end
end, true)

RegisterCommand('tequilaon', function()
    if IsPlayerAceAllowed(source, "rcore_tequila_music_off.tequilaon") then
        tequilaState = false
        TriggerClientEvent(triggerName('sync'), -1, false)
    else
        TriggerClientEvent("chatMessage", source, "^1Insufficient Permissions.")
    end
end, true)
