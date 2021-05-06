# Description: Infects the player with a certain probability
# AS: @a[scores={2tw.damage=1..}], AT: @s
# Called from functions: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Infects the player with a certain probability
execute if predicate 2mal3:2tw/tweaks/damage_infection run function 2mal3:2tw/tweaks/damage_infection/effect
# Resets the score
scoreboard players reset @s 2tw.damage
