# Description: Prevents creeper from doing blok damage
# AS: @e[type=minecraft:creeper,tag=!2tw.processed,tag=!global.ignore], AT: server
# Called from function: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Processed Creeper!","color":"aqua"}]


# Prevents the blok damage
data modify entity @s ExplosionRadius set value -3

# Saves that the creeper has been processed
tag @s add 2tw.anti_creeper_grief.processed
