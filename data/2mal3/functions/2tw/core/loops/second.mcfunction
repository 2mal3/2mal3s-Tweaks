# Description: Main loop every second
# AS: server, AT: server
# Called from functions: 2mal3:2tw/core/reload, 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Makes all elytras in the end unrepairable
execute if score $nerfed_elytra 2tw.config matches 1 as @a[predicate=2mal3:2tw/tweaks/nerfed_elytra/equiped_elytra_with_mending] run function 2mal3:2tw/tweaks/nerfed_elytra
# Improves the end crystals in the creation of the ender dragon
execute if score $better_end_crystals 2tw.config matches 1 as @e[type=minecraft:ender_dragon,tag=!2tw.better_end_crystals.processed] as @e[type=minecraft:end_crystal,predicate=2mal3:2tw/in_end,tag=!global.ignore] at @s if block ~ ~-1 ~ minecraft:bedrock if block ~ ~2 ~ minecraft:iron_bars if block ~2 ~ ~ minecraft:iron_bars if block ~-2 ~ ~ minecraft:iron_bars if block ~ ~ ~2 minecraft:iron_bars if block ~ ~ ~-2 minecraft:iron_bars run function 2mal3:2tw/tweaks/better_end_crystals
# Prevents creeper from doing blok damage
execute if score $anti_creeper_grief 2tw.config matches 1 as @e[type=minecraft:creeper,tag=!2tw.anti_creeper_grief.processed,tag=!global.ignore] run function 2mal3:2tw/tweaks/anti_creeper_grief
# Perform various things with lit entitys
execute if score $realistic_fire 2tw.config matches 1 run function 2mal3:2tw/tweaks/realistic_fire/main
# Write all players who die their death coordinates in the chat
execute if score $death_coordinates 2tw.config matches 1 as @a[scores={2tw.death=1..}] run function 2mal3:2tw/tweaks/death_coordinates
# Slowly generates a path along much traveled routes 
execute if score $path_generator 2tw.config matches 1 run function 2mal3:2tw/tweaks/path_generator/main
# Infects damaged players with a certain probability
execute if score $damage_infection 2tw.config matches 1 as @a[scores={2tw.damage=1..}] at @s if predicate 2mal3:2tw/tweaks/damage_infection run function 2mal3:2tw/tweaks/damage_infection
# Sets the spawn point of a dead player at a random within a radius of 2000 blocks around the spawn
execute if score $random_respawn 2tw.config matches 1 as @a[scores={2tw.death=1..}] run function 2mal3:2tw/tweaks/random_respawn
# The 1.8.9 regeneration
execute if score $old_regeneration 2tw.config matches 1 as @a run function 2mal3:2tw/tweaks/old_regeneration/main
# Gives all armor stands arms
execute if score $armor_stand_arms 2tw.config matches 1 as @e[type=minecraft:armor_stand,tag=!2tw.armor_stand_arms.processed,tag=!global.ignore] run function 2mal3:2tw/tweaks/armor_stand_arms
# Spawns a death chest at died players
execute if score $death_chest 2tw.config matches 1 as @a[scores={2tw.death=1..}] at @s run function 2mal3:2tw/tweaks/death_chest/find_pos

# Reset scooreboard triggers
scoreboard players reset @a[scores={2tw.death=1..}] 2tw.death
scoreboard players reset @a[scores={2tw.damage=1..}] 2tw.damage

# Calls the function in the next second
schedule function 2mal3:2tw/core/loops/second 1s replace
