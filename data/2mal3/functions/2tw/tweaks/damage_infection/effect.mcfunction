# Description: Gives an infected player negative effects
# AS: @a[scores={2tw.damage=1..}], AT: @s
# Called from functions: 2mal3:2tw/tweaks/damage_infection/main
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Player ","color":"aqua"},{"selector":"@s","color":"gray"},{"text":" has got infected,","color":"aqua"}]

playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..8] ~ ~ ~

effect give @s minecraft:blindness 10 0 true
effect give @s minecraft:poison 60 0 false
effect give @s minecraft:nausea 60 0 false
effect give @s minecraft:slowness 240 1 false
effect give @s minecraft:weakness 270 1 false
