# Description: Gives an infected player negative effects
# AS: @a[scores={2tw.damage=1..}], AT: @s
# Called from functions: 2mal3:2tw/tweaks/damage_infection/main
# Datapack by 2mal3

playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..8] ~ ~ ~

effect give @s minecraft:blindness 10 0 true
effect give @s minecraft:poison 60 0 false
effect give @s minecraft:nausea 60 0 false
effect give @s minecraft:slowness 240 1 false
effect give @s minecraft:weakness 270 1 false
