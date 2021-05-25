# Description: Players who sneak in high plants become invisible
# AS: @a[tag=!global.ignore], AT: @s
# Called from function: 2mal3:2tw/core/loops/4_tick
# Datapack by 2mal3

# Makes the player invisible when sneaking in a bush
execute if entity @s[predicate=2mal3:2tw/is_sneaking] if block ~ ~ ~ #2mal3:2tw/tall_plants run function 2mal3:2tw/tweaks/bush_hiding/hide

# Takes away the player's invisibility when he is no longer in a bush or no longer sneaking
execute if entity @s[tag=2tw.bush_hiding.hiding,predicate=!2mal3:2tw/is_sneaking] run function 2mal3:2tw/tweaks/bush_hiding/unhide
execute if entity @s[tag=2tw.bush_hiding.hiding] unless block ~ ~ ~ #2mal3:2tw/tall_plants run function 2mal3:2tw/tweaks/bush_hiding/unhide
