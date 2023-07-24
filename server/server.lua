local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('tintchecker', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) ~= nil then
    	TriggerClientEvent("fezz_windowtint:checkTint", source)
	end
end)
