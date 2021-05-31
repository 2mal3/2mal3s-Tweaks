# Description: Gives damage to players standing on dangerous blocks
# AS: @a[predicate=2mal3:2tw/tweaks/stand_on_damage_block], AT: server
# Called from function: 2mal3:2tw/core/loops/10_tick
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Get block damage","color":"aqua"}]

# Deal 1 heart damage
effect give @s minecraft:resistance 1 3 true
effect give @s minecraft:instant_damage 1 0 true
