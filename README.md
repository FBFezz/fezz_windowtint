# fezz_windowtint
This is a script that allows police or players to check vehicle window tints.

## Requirements
- [es_extended](https://github.com/esx-framework/esx_core)

## Installation
- Add this in your server.cfg :

```
ensure fezz_windowtint
```

## Directions to use
- if you are using ox inv, insert this into the data - items.lua file
Ox Inventory items - Image for the item is in html - windowtint.png
```lua
	['tintchecker'] = {
		label = 'Window Tint Checker',
		weight = 20,
        client = {
			usetime = 2500,
			export = 'fezz_windowtint.CheckTint'
		},
	},
```
- If you want to use this with esx_policejob job menu go to line 323 in main.lua (client) and find 
```lua
elements3[#elements3+1] = {icon = "fas fa-car", title = TranslateCap('impound'), value = 'impound'}
```

and make it look like this 
```lua 
elements3[#elements3+1] = {icon = "fas fa-car", title = TranslateCap('impound'), value = 'impound'}
elements3[#elements3+1] = {icon = "fas fa-car", title = "Check Window tint", value = 'checkTint'}
```

Then go to line 343 and to where it says
```lua 
if action == 'vehicle_infos' then
	local vehicleData = ESX.Game.GetVehicleProperties(vehicle)
	OpenVehicleInfosMenu(vehicleData)
```

and make it look like this
```lua
if action == 'vehicle_infos' then
	local vehicleData = ESX.Game.GetVehicleProperties(vehicle)
	OpenVehicleInfosMenu(vehicleData)
elseif action == 'checkTint' then
	exports.fezz_windowtint:CheckTint(vehicle)
end
```
