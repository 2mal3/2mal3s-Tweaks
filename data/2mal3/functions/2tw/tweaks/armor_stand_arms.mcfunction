# Description: Gives the armor stands arms
# AS: @e[type=minecraft:armor_stand,tag=!2tw.armor_stand_arms.processed,tag=!global.ignore], AT: server
# Called from functions: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Got arms","color":"aqua"}]


# Shows the arms
data modify entity @s ShowArms set value 1b

# Saves that the armor stand has been processed
tag @s add 2tw.armor_stand_arms.processed
