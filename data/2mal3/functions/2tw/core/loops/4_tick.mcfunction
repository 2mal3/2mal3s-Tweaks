# Description: Main loop every 8 ticks
# AS: server, AT: server
# Called from functions: 2mal3:2tw/core/reload, 2mal3:2tw/core/loops/8_tick
# Datapack by 2mal3

# Gives speed to a player running on path blocks
execute if score $speed_paths 2tw.config matches 1 as @a[gamemode=!spectator] at @s if block ~ ~-0.9 ~ minecraft:grass_path run effect give @s minecraft:speed 1 0 true

# Makes lit entitys place fire
execute if score $realistic_fire 2tw.config matches 1 run function 2mal3:2tw/tweaks/realistic_fire/fire/main

# Calls the function in the next second
schedule function 2mal3:2tw/core/loops/4_tick 4t replace
