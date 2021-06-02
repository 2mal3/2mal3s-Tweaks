# Description: Main loop every minute
# Called from functions: 2mal3:2tw/core/reload, 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Stops the time when no player is on the server
execute if score $server_time 2tw.config matches 1 run function 2mal3:2tw/tweaks/server_time/main
# Shows new wandering traders
execute if score $wandering_trader_notifications 2tw.config matches 1 as @e[type=minecraft:wandering_trader,tag=!2tw.wandering_trader_notifications.processed,tag=!global.ignore] at @s run function 2mal3:2tw/tweaks/wandering_trader_notifications/main
# Loop for the realistic torches module
execute if score $realistic_torches 2tw.config matches 1 as @e[type=minecraft:area_effect_cloud,tag=2tw.realistic_torch] at @s run function 2mal3:2tw/tweaks/realistic_torches/main

# Calls the function in the next second
schedule function 2mal3:2tw/core/loops/minute 60s replace
