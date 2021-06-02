# Description: We triggered when a torch burns out
# AS: @e[type=minecraft:area_effect_cloud,tag=2tw.realistic_torch], AT: @s
# Called from function: 2mal3:2tw/tweaks/realistic_torches/main
# Datapack by 2mal3

playsound minecraft:block.fire.extinguish block @a[distance=..8] ~ ~ ~ 0.5 2
particle minecraft:smoke ~0.5 ~0.2 ~0.5 0 0.2 0 0 10
setblock ~ ~ ~ minecraft:air
kill @s
