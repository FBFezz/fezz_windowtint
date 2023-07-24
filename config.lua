Config = {}

Config.AllowEveryone = true -- Enable to allow everyone to use the item / command
Config.EnableCommand = true -- Enable or Disable the checktint command
Config.Target = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.Item = false -- Enable if you use the window tint as an item with the target
Config.Animation = true -- Enable to show animation
