local tequilaState = false

--When player spawned send him update
AddEventHandler(triggerName('playerSpawned'), function()
    TriggerClientEvent(triggerName('sync'), source, tequilaState)
end)

RegisterCommand('tequilaoff', function()
    tequilaState = true
    TriggerClientEvent(triggerName('sync'), -1, true)
end)

RegisterCommand('tequilaon', function()
    tequilaState = false
    TriggerClientEvent(triggerName('sync'), -1, false)
end)
