# Description: Loop for the realistic torches module
# AS: @e[type=minecraft:marker,tag=2tw.realistic_torch], AT: @s
# Called from function: 2mal3:2tw/core/loops/minute
# Datapack by 2mal3

# Deletes the maker entity when the fakel is destroyed
execute unless block ~ ~ ~ minecraft:torch run kill @s

# Burn out the torch when the time is up
scoreboard players add @s 2tw.torches_time 1
execute if score @s 2tw.torches_time >= $realistic_torches_time 2tw.config run function 2mal3:2tw/tweaks/realistic_torches/remove
