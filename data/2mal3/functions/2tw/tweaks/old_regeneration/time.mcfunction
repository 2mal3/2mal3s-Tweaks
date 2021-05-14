# Description: Counts up the regeneration timer for damaged player
# AS: @a[scores={2tw.food=18..}], AT: server
# Called from function: 2mal3:2tw/tweaks/old_regeneration/main
# Datapack by 2mal3

# Saves the current number of maximum hearts
execute store result score .temp_0 2tw.data run attribute @s generic.max_health get
# Counts the regeneration timer when the current hearts are below the maximum hearts
execute if score @s 2tw.health < .temp_0 2tw.data run scoreboard players add @s 2tw.regeneration 1
