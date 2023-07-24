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
- Put this into qb-core > shared > items.lua
```lua
['tintchecker']                     = {['name'] = 'tintchecker',                       ['label'] = 'Window Tint Checker',       ['weight'] = 0,            ['type'] = 'item',         ['image'] = 'windowtint.png',              ['unique'] = false,         ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Check a Vehicles Window Tint'},
```

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
- If you want to use this in policejob or other scripts, you can use this event
	```lua 
	exports.fezz_windowtint:CheckTint(vehicle)
	```
