# Description: Places the death chest facing south
# AS: every player that dies, AT: a valid position
# Called from function: 2mal3:2tw/tweaks/death_chest/find_facing
# Datapack by 2mal3

# Saves, that a death chest was placed
scoreboard players set .temp_0 dech.data 1

# Place the chest
setblock ~ ~ ~ minecraft:chest[type=right,facing=west]
setblock ~ ~ ~1 minecraft:chest[type=left,facing=west]

# Fill the chest
function 2mal3:2tw/tweaks/death_chest/fill/one
execute positioned ~1 ~ ~ run function 2mal3:2tw/tweaks/death_chest/fill/two
