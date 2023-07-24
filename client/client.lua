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
            local vehicle, distance = ESX.Game.GetClosestVehicle()
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
                ESX.ShowNotification("No Vehicle Nearby")
            end
            FreezeEntityPosition(PlayerPedId(), false)
        elseif not Config.AllowEveryone then
            for i=1, #Config.policeJobs do
                if Config.policeJobs[i] == ESX.PlayerData.job.name then
                    local vehicle, distance = ESX.Game.GetClosestVehicle()
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
                        ESX.ShowNotification("No Vehicle Nearby")
                    end
                    FreezeEntityPosition(PlayerPedId(), false)
                end
            end
        else
            ESX.ShowNotification("You are not a cop")
        end
    end, false)
end

RegisterNetEvent('fezz_windowtint:checkTint')
AddEventHandler('fezz_windowtint:checkTint', function()
    if Config.AllowEveryone then
        local vehicle, distance = ESX.Game.GetClosestVehicle()
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
            ESX.ShowNotification("No Vehicle Nearby")
        end
        FreezeEntityPosition(PlayerPedId(), false)
    elseif not Config.AllowEveryone then
        for i=1, #Config.policeJobs do
            if Config.policeJobs[i] == ESX.PlayerData.job.name then
                local vehicle, distance = ESX.Game.GetClosestVehicle()
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
                    ESX.ShowNotification("No Vehicle Nearby")
                end
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end
    else
        ESX.ShowNotification("You are not a cop")
    end
end)

function CheckTint(entity)
    if Config.AllowEveryone then
        local vehicle, distance = ESX.Game.GetClosestVehicle()
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
            ESX.ShowNotification("No Vehicle Nearby")
        end
        FreezeEntityPosition(PlayerPedId(), false)
    elseif not Config.AllowEveryone then
        for i=1, #Config.policeJobs do
            if Config.policeJobs[i] == ESX.PlayerData.job.name then
                local vehicle, distance = ESX.Game.GetClosestVehicle()
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
                    ESX.ShowNotification("No Vehicle Nearby")
                end
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end
    else
        ESX.ShowNotification("You are not a cop")
    end
end

if Config.Target then
    exports.ox_target:addGlobalVehicle({
        {
            name = 'fezz_windowtint:targetCheckTint',
            icon = 'fa-solid fa-car-side',
            label = 'Check Window tint',
            bones = { 'door_dside_f', 'seat_dside_f' },
            canInteract = function(entity, distance, coords, name)
                for i=1, #Config.policeJobs do
                    if Config.policeJobs[i] == ESX.PlayerData.job.name then
                        if GetVehicleDoorLockStatus(entity) > 1 then return end

                        local boneId = GetEntityBoneIndexByName(entity, 'door_dside_f')

                        if boneId ~= -1 then
                            return #(coords - GetWorldPositionOfEntityBone(entity, boneId)) < 0.5 or #(coords - GetWorldPositionOfEntityBone(entity, GetEntityBoneIndexByName(entity, 'seat_dside_f'))) < 0.72
                        end
                    end
                end
            end,
            onSelect = function(data)
                if Config.Item then
                    ESX.TriggerServerCallback('fezz_windowtint:getItemAmount', function(quantity)
                        if quantity > 0 then
                            TriggerEvent('fezz_windowtint:checkTint', data.entity)
                        else
                            ESX.ShowNotification("You don't have a window tint checker")
                        end
                    end, 'tintchecker')
                else
                    TriggerEvent('fezz_windowtint:checkTint', data.entity)
                end
            end
        }
    })
    AddEventHandler('onResourceStop', function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then return end
        exports.ox_target:removeGlobalVehicle("fezz_windowtint:targetCheckTint")
    end)
end
