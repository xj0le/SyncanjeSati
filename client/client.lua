-- Syncanje sati u igri sa realnim vremenom

RegisterNetEvent("j0le:client:SyncajSate")
AddEventHandler("j0le:client:SyncajSate", function(Sati, Minute, Sekunde)
    NetworkOverrideClockTime(Sati, Minute, Sekunde)
end)

Citizen.CreateThread(function()
    while true do
        TriggerServerEvent("j0le:server:SyncajSate")
        Citizen.Wait(Config.MinuteSycanjaSati * 60000)
    end
end)
