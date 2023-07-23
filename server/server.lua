ESX.RegisterUsableItem('tintchecker', function(source)
    TriggerClientEvent("fezz_windowtint:checkTint", source)
end)

ESX.RegisterServerCallback('fezz_windowtint:getItemAmount', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem(item).count

	cb(quantity)
end)
