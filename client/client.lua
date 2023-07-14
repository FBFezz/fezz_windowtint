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
        elseif ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
            local vehicle, distance = ESX.Game.GetClosestVehicle()
            if vehicle and distance <= 5 then
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
    elseif ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
        local vehicle, distance = ESX.Game.GetClosestVehicle()
        if vehicle and distance <= 5 then
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
    else
        ESX.ShowNotification("You are not a cop")
    end
end)

function CheckTint()
    if Config.AllowEveryone then
        local vehicle, distance = ESX.Game.GetClosestVehicle()
        if vehicle and distance <= 5 then
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
    elseif ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
        local vehicle, distance = ESX.Game.GetClosestVehicle()
        if vehicle and distance <= 5 then
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
    else
        ESX.ShowNotification("You are not a cop")
    end
end