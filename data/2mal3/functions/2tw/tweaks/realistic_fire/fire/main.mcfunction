# Description: Makes lit entitys place fire
# AS: server, AT: server
# Called from function: 2mal3:2tw/core/loops/4_tick
# Datapack by 2mal3

execute as @a at @s as @e[distance=..42,predicate=2mal3:2tw/tweaks/realistic_fire/on_fire,type=!minecraft:arrow] at @s unless entity @e[type=minecraft:area_effect_cloud,tag=2tw.fire,distance=..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["2tw.fire"]}
execute as @e[type=minecraft:area_effect_cloud,tag=2tw.fire] at @s unless entity @e[distance=..1,type=!minecraft:area_effect_cloud] run function 2mal3:2tw/tweaks/realistic_fire/fire/set
