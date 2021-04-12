# Description: Places fire in places where previously lit entitys stood
# AS: @e[type=minecraft:area_effect_cloud,tag=2tw.fire], AT: @s
# Called from function: 2mal3:2tw/tweaks/realistic_fire/main
# Datapack by 2mal3

setblock ~ ~ ~ minecraft:fire
kill @s
