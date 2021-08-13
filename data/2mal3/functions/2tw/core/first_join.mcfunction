# Description: Command that are executed, wenn a player first join the servrt
# Called from advancements: 2mal3:2tw/first_join
# Datapack by 2mal3

## Tests all new players to see if the minecraft or server version is wrong and tells them so
# Collects the data
execute store result score .temp_0 2tw.data run data get entity @s DataVersion

scoreboard players set .temp_1 2tw.data 0
execute unless score .temp_1 2tw.data matches 1.. store success score .temp_1 2tw.data run data get entity @s "Spigot.ticksLived"
execute unless score .temp_1 2tw.data matches 1.. store success score .temp_1 2tw.data run data get entity @s "Bukkit.updateLevel"
execute unless score .temp_1 2tw.data matches 1.. store success score .temp_1 2tw.data run data get entity @s "Paper.SpawnReason"

# Gives an error message for wrong versions
execute unless score .temp_0 2tw.data matches 2724.. run tellraw @s [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text":"]: ","color":"gray"},{"text":"This Minecraft version is not supported by the datapack. Please use a version later than 1.16.","color":"gold"}]
execute if score .temp_1 2tw.data matches 1 run tellraw @s [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text":"]: ","color":"gray"},{"text":"This server software is not supported by the datapack, so errors may occur. Please use another server software for better stability.","color":"gold"}]


# Gives the player a uniqe id based on the UUID for the spectator sense module
execute store result score .temp_0 2tw.data run data get entity @s UUID[0]
execute store result score .temp_1 2tw.data run data get entity @s UUID[1]
execute store result score .temp_2 2tw.data run data get entity @s UUID[2]
execute store result score .temp_3 2tw.data run data get entity @s UUID[3]

scoreboard players operation .temp_0 2tw.data += .temp_1 2tw.data
scoreboard players operation .temp_0 2tw.data += .temp_2 2tw.data
scoreboard players operation .temp_0 2tw.data += .temp_3 2tw.data

scoreboard players operation .temp_0 2tw.data %= $16 2tw.data

scoreboard players operation @s 2tw.spectator_id = .temp_0 2tw.data
