# Description: Regenerates the player by 1 heart when the regeneration timer reaches 4
# AS: @a[scores={2tw.regeneration=4..}], AT: server
# Called from function: 2mal3:2tw/tweaks/old_regeneration/main
# Datapack by 2mal3

# Regenerate on heart
effect give @s minecraft:regeneration 1 2 true
# Removes one food from the player
effect give @s minecraft:hunger 1 39 true

# Resets the regeneration timer
scoreboard players reset @s 2tw.regeneration
