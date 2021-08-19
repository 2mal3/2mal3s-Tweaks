# Description: Finds a valid rotation for the chest
# AS: every player that dies, AT: a valid pos
# Called from function: 2mal3:2tw/tweaks/death_chest/find_pos
# Datapack by 2mal3

execute if score .temp_0 dech.data matches 0 if block ~ ~ ~1 #2mal3:2tw/death_chest/replaceable run function 2mal3:2tw/tweaks/death_chest/place/south
execute if score .temp_0 dech.data matches 0 if block ~1 ~ ~ #2mal3:2tw/death_chest/replaceable run function 2mal3:2tw/tweaks/death_chest/place/west
execute if score .temp_0 dech.data matches 0 if block ~ ~ ~-1 #2mal3:2tw/death_chest/replaceable run function 2mal3:2tw/tweaks/death_chest/place/north
execute if score .temp_0 dech.data matches 0 if block ~-1 ~ ~ #2mal3:2tw/death_chest/replaceable run function 2mal3:2tw/tweaks/death_chest/place/east
