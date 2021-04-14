# Description: Plays a tone sequence
# AS: @e[type=minecraft:wandering_trader,tag=!2tw.wandering_trader_notifications.processed,tag=!global.ignore], AT: @s
# Called from function: 2mal3:2tw/tweaks/wandering_trader_notifications/main
# Datapack by 2mal3

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.2

schedule function 2mal3:2tw/tweaks/wandering_trader_notifications/sound/2 5t
