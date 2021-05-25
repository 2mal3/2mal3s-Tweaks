# Description: Takes away the player's invisibility when he is no longer in a bush or no longer sneaking
# AS: @a[tag=!global.ignore], AT: @s
# Called from function: 2mal3:2tw/core/loops/4_tick
# Datapack by 2mal3

effect clear @s minecraft:invisibility
tag @s remove 2tw.bush_hiding.hiding
