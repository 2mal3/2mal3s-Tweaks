# Description: Improves the end crystals in the creation of the ender dragon
# AS: @e[type=minecraft:end_crystal,predicate=2mal3:2tw/in_end], AT: @s
# Called from functions: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"End Crystal improved!","color":"aqua"}]


# Improves the end crystals
setblock ~2 ~-2 ~2 minecraft:obsidian
setblock ~-2 ~-2 ~2 minecraft:obsidian
setblock ~-2 ~-2 ~-2 minecraft:obsidian
setblock ~2 ~-2 ~-2 minecraft:obsidian

# Stores that the crystals have been improved
tag @e[type=minecraft:ender_dragon,tag=!2tw.better_end_crystals.processed] add 2tw.better_end_crystals.processed
