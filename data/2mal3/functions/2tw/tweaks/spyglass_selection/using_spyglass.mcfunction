# Description: Saves that the player is using a spyglass
# AS: every player that uses a spyglass, AT: player
# Called from advancement: 2mal3:2tw/tweaks/spyglass_selection/use_spyglass_while_sneaking
# Datapack by 2mal3

# Reset advancement
advancement revoke @s only 2mal3:2tw/tweaks/spyglass_selection/use_spyglass_while_sneaking

# -
execute if score $spyglass_selection 2tw.config matches 1 as @e[team=!this_team_does_not_exist] run function 2mal3:2tw/tweaks/spyglass_selection/check

