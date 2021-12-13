-- Syncanje sati u igri sa realnim vremenom

RegisterNetEvent("j0le:server:SyncajSate")
AddEventHandler("j0le:server:SyncajSate", function()
    TriggerClientEvent("j0le:client:SyncajSate", source, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
end)
