# Description: Tests if an entity is looked at by a player
# AS: @e[team=!this_team_does_not_exist], AT: player that looking at the enity and has dropped his spyglass
# Called from function: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Find the entity the player is looking at
tag @s add 2tw.spyglass_selection.this
execute as @p if predicate 2mal3:2tw/tweaks/spyglass_selection/looking_at_filter as @e[tag=2tw.spyglass_selection.this] run function 2mal3:2tw/tweaks/spyglass_selection/effect
tag @s remove 2tw.spyglass_selection.this
