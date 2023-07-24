local QBCore = exports['qb-core']:GetCoreObject()
local PlayerJob = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

local tint = nil
Display = false

function SetDisplay(bool)
    Display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
    SendNUIMessage({
        type = "data",
        tint = 'None',
        textColor = '--color-black'
    })
end)

RegisterNetEvent('fezz_windowtint:displayTint')
AddEventHandler('fezz_windowtint:displayTint', function(tint, color)
    SendNUIMessage({
        type = "data",
        tint = tint,
        textColor = color
    })
end)

if Config.EnableCommand then
    RegisterCommand("checktint", function()
        if Config.AllowEveryone then
            local vehicle, distance = QBCore.Functions.GetClosestVehicle()
            if vehicle and distance <= 5 then
                if Config.Animation then
                    RequestAnimDict("cellphone@")
                    while (not HasAnimDictLoaded("cellphone@")) do Wait(0) end
                    TaskPlayAnim(PlayerPedId(), 'cellphone@', 'cellphone_text_read_base', 8.0, -8, 5000, 49, 0, false, false, false)
                end
                SetDisplay(true)

                if GetVehicleWindowTint(vehicle) == -1  then
                    SendNUIMessage({    
                        type = "data",
                        tint = 'None',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 0 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Stock',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 1 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Pure Black',
                        textColor = '--color-red'
                    })
                elseif GetVehicleWindowTint(vehicle) == 2 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Dark Smoke',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 3 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Light Smoke',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 4 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Limo',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 5 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Green',
                        textColor = '--color-black'
                    })
                end
            else
                QBCore.Functions.Notify("No Vehicle Nearby")
            end
            FreezeEntityPosition(PlayerPedId(), false)
        elseif QBCore.Functions.GetPlayerData().job.name == 'police' then
            local vehicle, distance = QBCore.Functions.GetClosestVehicle()
            if vehicle and distance <= 5 then
                if Config.Animation then
                    RequestAnimDict("cellphone@")
                    while (not HasAnimDictLoaded("cellphone@")) do Wait(0) end
                    TaskPlayAnim(PlayerPedId(), 'cellphone@', 'cellphone_text_read_base', 8.0, -8, 5000, 49, 0, false, false, false)
                end
                SetDisplay(true)

                if GetVehicleWindowTint(vehicle) == -1  then
                    SendNUIMessage({    
                        type = "data",
                        tint = 'None',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 0 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Stock',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 1 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Pure Black',
                        textColor = '--color-red'
                    })
                elseif GetVehicleWindowTint(vehicle) == 2 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Dark Smoke',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 3 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Light Smoke',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 4 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Limo',
                        textColor = '--color-black'
                    })
                elseif GetVehicleWindowTint(vehicle) == 5 then
                    SendNUIMessage({
                        type = "data",
                        tint = 'Green',
                        textColor = '--color-black'
                    })
                end
            else
                QBCore.Functions.Notify("No Vehicle Nearby")
            end
            FreezeEntityPosition(PlayerPedId(), false)
        else
            QBCore.Functions.Notify("You are not a cop")
        end
    end, false)
end

RegisterNetEvent('fezz_windowtint:checkTint')
AddEventHandler('fezz_windowtint:checkTint', function()
    if Config.AllowEveryone then
        local vehicle, distance = QBCore.Functions.GetClosestVehicle()
        if vehicle and distance <= 5 then
            if Config.Animation then
                RequestAnimDict("cellphone@")
                while (not HasAnimDictLoaded("cellphone@")) do Wait(0) end
                TaskPlayAnim(PlayerPedId(), 'cellphone@', 'cellphone_text_read_base', 8.0, -8, 5000, 49, 0, false, false, false)
            end
            SetDisplay(true)

            if GetVehicleWindowTint(vehicle) == -1  then
                SendNUIMessage({    
                    type = "data",
                    tint = 'None',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 0 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Stock',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 1 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Pure Black',
                    textColor = '--color-red'
                })
            elseif GetVehicleWindowTint(vehicle) == 2 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Dark Smoke',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 3 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Light Smoke',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 4 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Limo',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 5 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Green',
                    textColor = '--color-black'
                })
            end
        else
            QBCore.Functions.Notify("No Vehicle Nearby")
        end
        FreezeEntityPosition(PlayerPedId(), false)
    elseif QBCore.Functions.GetPlayerData().job.name == 'police' then
        local vehicle, distance = QBCore.Functions.GetClosestVehicle()
        if vehicle and distance <= 5 then
            if Config.Animation then
                RequestAnimDict("cellphone@")
                while (not HasAnimDictLoaded("cellphone@")) do Wait(0) end
                TaskPlayAnim(PlayerPedId(), 'cellphone@', 'cellphone_text_read_base', 8.0, -8, 5000, 49, 0, false, false, false)
            end
            SetDisplay(true)

            if GetVehicleWindowTint(vehicle) == -1  then
                SendNUIMessage({    
                    type = "data",
                    tint = 'None',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 0 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Stock',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 1 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Pure Black',
                    textColor = '--color-red'
                })
            elseif GetVehicleWindowTint(vehicle) == 2 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Dark Smoke',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 3 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Light Smoke',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 4 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Limo',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 5 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Green',
                    textColor = '--color-black'
                })
            end
        else
            QBCore.Functions.Notify("No Vehicle Nearby")
        end
        FreezeEntityPosition(PlayerPedId(), false)
    else
        QBCore.Functions.Notify("You are not a cop")
    end
end)

function CheckTint(entity)
    if Config.AllowEveryone then
        local vehicle, distance = QBCore.Functions.GetClosestVehicle()
        if vehicle and distance <= 5 then
            if Config.Animation then
                RequestAnimDict("cellphone@")
                while (not HasAnimDictLoaded("cellphone@")) do Wait(0) end
                TaskPlayAnim(PlayerPedId(), 'cellphone@', 'cellphone_text_read_base', 8.0, -8, 5000, 49, 0, false, false, false)
            end
            SetDisplay(true)

            if GetVehicleWindowTint(vehicle) == -1  then
                SendNUIMessage({    
                    type = "data",
                    tint = 'None',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 0 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Stock',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 1 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Pure Black',
                    textColor = '--color-red'
                })
            elseif GetVehicleWindowTint(vehicle) == 2 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Dark Smoke',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 3 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Light Smoke',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 4 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Limo',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 5 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Green',
                    textColor = '--color-black'
                })
            end
        else
            QBCore.Functions.Notify("No Vehicle Nearby")
        end
        FreezeEntityPosition(PlayerPedId(), false)
    elseif QBCore.Functions.GetPlayerData().job.name == 'police' then
        local vehicle, distance = QBCore.Functions.GetClosestVehicle()
        if vehicle and distance <= 5 then
            if Config.Animation then
                RequestAnimDict("cellphone@")
                while (not HasAnimDictLoaded("cellphone@")) do Wait(0) end
                TaskPlayAnim(PlayerPedId(), 'cellphone@', 'cellphone_text_read_base', 8.0, -8, 5000, 49, 0, false, false, false)
            end
            SetDisplay(true)

            if GetVehicleWindowTint(vehicle) == -1  then
                SendNUIMessage({    
                    type = "data",
                    tint = 'None',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 0 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Stock',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 1 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Pure Black',
                    textColor = '--color-red'
                })
            elseif GetVehicleWindowTint(vehicle) == 2 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Dark Smoke',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 3 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Light Smoke',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 4 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Limo',
                    textColor = '--color-black'
                })
            elseif GetVehicleWindowTint(vehicle) == 5 then
                SendNUIMessage({
                    type = "data",
                    tint = 'Green',
                    textColor = '--color-black'
                })
            end
        else
            QBCore.Functions.Notify("No Vehicle Nearby")
        end
        FreezeEntityPosition(PlayerPedId(), false)
    else
        QBCore.Functions.Notify("You are not a cop")
    end
end

if Config.Target then
    exports['qb-target']:AddGlobalVehicle({
        options = {
            {
                num = 1,
                type = "client",
                event = 'fezz_windowtint:targetCheckTint',
                icon = 'fa-solid fa-car-side',
                label = 'Check Window tint',
                targeticon = "fa-solid fa-car-side",
                action = function(entity)
                    if IsPedAPlayer(entity) then return false end
                    if Config.Item then
                        local hasItem = QBCore.Functions.HasItem('tintchecker')
                        if hasItem then
                            TriggerEvent('fezz_windowtint:checkTint', entity)
                        else
                            QBCore.Functions.Notify("You don't have a window tint checker")
                        end
                    else
                        TriggerEvent('fezz_windowtint:checkTint', entity)
                    end
                end,
                canInteract = function(entity, distance, data)
                    if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                    return true
                end,
                job = 'police'
            }
        },
        distance = 2.5
    })
    AddEventHandler('onResourceStop', function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then return end
        exports['qb-target']:RemoveGlobalVehicle('fezz_windowtint:targetCheckTint')
    end)
end
