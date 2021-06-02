# Description: Find the placed torch with a raycast and place a maker entity there 
# AS: player who placed a torch , AT: @s
# Called from function: 2mal3:2tw/tweaks/realistic_torches/place/test, 2mal3:2tw/tweaks/realistic_torches/place/raycast
# Datapack by 2mal3

execute if block ~ ~ ~ minecraft:torch align xyz run summon minecraft:marker ~ ~ ~ {Tags: ["2tw.realistic_torch", "global.ignore"]}
execute if block ~ ~ ~ #2mal3:2tw/air positioned ^ ^ ^0.05 run function 2mal3:2tw/tweaks/realistic_torches/place/raycast
