# Description: Main loop every second
# AS: server, AT: server
# Called from functions: 2mal3:2tw/core/reload, 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Makes all elytras in the end unrepairable
execute if score $nerfed_elytra 2tw.config matches 1 if entity @r[predicate=2mal3:2tw/in_end,gamemode=!spectator] as @e[type=minecraft:item_frame,tag=!2tw.nerfed_elytra.processed,tag=!global.ignore,predicate=2mal3:2tw/tweaks/nerfed_elytra,predicate=2mal3:2tw/in_end] run function 2mal3:2tw/tweaks/nerfed_elytra
#execute if score $nerfed_elytra 2tw.config matches 1 if entity @r[gamemode=!spectator] as @e[type=minecraft:item_frame,tag=!2tw.processed,predicate=2mal3:2tw/tweaks/nerfed_elytra/elytra] run function 2mal3:2tw/tweaks/nerfed_elytra

# Improves the end crystals in the creation of the ender dragon
execute if score $better_end_crystals 2tw.config matches 1 as @e[type=minecraft:ender_dragon,tag=!2tw.better_end_crystals.processed] as @e[type=minecraft:end_crystal,predicate=2mal3:2tw/in_end,tag=!global.ignore] at @s if block ~ ~-1 ~ minecraft:bedrock if block ~ ~2 ~ minecraft:iron_bars if block ~2 ~ ~ minecraft:iron_bars if block ~-2 ~ ~ minecraft:iron_bars if block ~ ~ ~2 minecraft:iron_bars if block ~ ~ ~-2 minecraft:iron_bars run function 2mal3:2tw/tweaks/better_end_crystals
 
# Prevents creeper from doing blok damage
execute if score $anti_creeper_grief 2tw.config matches 1 as @e[type=minecraft:creeper,tag=!2tw.anti_creeper_grief.processed,tag=!global.ignore] run function 2mal3:2tw/tweaks/anti_creeper_grief

# Perform various things with lit entitys
execute if score $realistic_fire 2tw.config matches 1 run function 2mal3:2tw/tweaks/realistic_fire/main

# Calls the function in the next second
schedule function 2mal3:2tw/core/loops/second 1s replace
