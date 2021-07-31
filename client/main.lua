local turnOff = not Config.DefaultState

AddEventHandler('playerSpawned', function()
    TriggerServerEvent(triggerName('playerSpawned'))
end)

RegisterNetEvent(triggerName('sync'))
AddEventHandler(triggerName('sync'), function(state)
    turnOff = state
end)

Citizen.CreateThread(function()
    if turnOff then
        Wait(0)
        -- Disable Tequilala Music
        SetStaticEmitterEnabled('collision_9qv4ecm', false)
        -- Disable Tequilala Music Basement
        SetStaticEmitterEnabled('collision_7fvvw2f', false)
    else
        Wait(1000)
    end
end)
