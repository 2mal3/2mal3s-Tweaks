# Description: Makes the block more and more "stepped out"
# AS: @a[scores={2tw.walk=200..}] / @a[scores={2tw.sprint=50..}], AT: @s ~ ~-0.8 ~
# Called from function: 2mal3:2tw/tweaks/path_generator/main
# Datapack by 2mal3

# Path blocks in the overworld
execute if block ~ ~ ~ minecraft:coarse_dirt run setblock ~ ~ ~ minecraft:dirt_path
execute if block ~ ~ ~ minecraft:dirt run setblock ~ ~ ~ minecraft:coarse_dirt
execute if block ~ ~ ~ #2mal3:2tw/grass run setblock ~ ~ ~ minecraft:dirt

# Path blocks in the nether
execute if block ~ ~ ~ #2mal3:2tw/nylium run setblock ~ ~ ~ minecraft:netherrack
