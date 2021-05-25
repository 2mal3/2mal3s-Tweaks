# Description: Makes the player invisible when sneaking in a bush
# AS: @a[tag=!global.ignore,predicate=2mal3:2tw/is_sneaking], AT: @s
# Called from function: 2mal3:2tw/core/loops/4_tick
# Datapack by 2mal3

effect give @s minecraft:invisibility 1 0 true
tag @s add 2tw.bush_hiding.hiding
