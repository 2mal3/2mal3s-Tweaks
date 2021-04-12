# Description: Makes lit creeper explode
# AS: @e[type=minecraft:creeper,tag=!2tw.realistic_fire.processed,predicate=2mal3:2tw/tweaks/realistic_fire/on_fire], AT: server
# Called from function: 2mal3:2tw/tweaks/realistic_fire/main
# Datapack by 2mal3

# Makes the creeper explode
data modify entity @s ignited set value 1

# Saves that the creeper was processed
tag @s add 2tw.realistic_fire.processed
