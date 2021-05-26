# Description: Shows new wandering traders
# AS: @e[type=minecraft:wandering_trader,tag=!2tw.wandering_trader_notifications.processed,tag=!global.ignore], AT: @s
# Called from function: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Wandering Trader spawned","color":"aqua"}]


# Performs the effects to better find the wandering trader
effect give @s minecraft:glowing 180 0 true
tellraw @a [{"text":"A "},{"selector":"@s"},{"text":" has arrived near "},{"selector":"@p"},{"text":"."}]
function 2mal3:2tw/tweaks/wandering_trader_notifications/sound/1

# Stores that the wandering trader have been processed
tag @s add 2tw.wandering_trader_notifications.processed
