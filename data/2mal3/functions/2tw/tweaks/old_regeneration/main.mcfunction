# Description: Makes all players with damage that have more than 18 food regenerate 1 heart every 4 seconds
# AS: @a, AT: server
# Called from function: mal3:2tw/core/loops/second
# Datapack by 2mal3

# Counts up the regeneration timer when the damaged player has more than 16 food
execute if score @s 2tw.food matches 18.. run function 2mal3:2tw/tweaks/old_regeneration/time

# Resets the regeneration timer when the player is either fully regenerated or has not enough food
execute if score @s 2tw.health >= .temp_0 2tw.data run scoreboard players reset @s 2tw.regeneration
execute unless score @s 2tw.food matches 18.. run scoreboard players reset @s 2tw.regeneration
 
# Regenerates the player by 1 life when the regeneration timer reaches 4
execute if score @s 2tw.regeneration matches 4.. run function 2mal3:2tw/tweaks/old_regeneration/regenerate
