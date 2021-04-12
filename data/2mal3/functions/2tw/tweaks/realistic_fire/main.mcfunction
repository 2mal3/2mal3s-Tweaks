# Description: Makes all elytras in the end unrepairable
# AS: server, AT: server
# Called from function: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Lit arrows place fire
execute as @e[type=minecraft:arrow,predicate=2mal3:2tw/tweaks/realistic_fire/on_fire,predicate=2mal3:2tw/tweaks/realistic_fire/in_ground,tag=!global.ignore] at @s run setblock ~ ~ ~ minecraft:fire

# Makes lit creeper explode
execute as @e[type=minecraft:creeper,tag=!2tw.realistic_fire.processed,predicate=2mal3:2tw/tweaks/realistic_fire/on_fire,tag=!global.ignore] run function 2mal3:2tw/tweaks/realistic_fire/creeper
