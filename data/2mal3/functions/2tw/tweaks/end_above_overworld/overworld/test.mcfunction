# Description: Tests if the end_above_overworld module is enabled
# AS: player in the overworld over 1000, AT: @s
# Called from advancement: 2mal3:2tw/tweaks/end_above_overworld/overworld
# Datapack by 2mal3

# Reset advancement
advancement revoke @s only 2mal3:2tw/tweaks/end_above_overworld/overworld

# Moves the player to the end if module is enabled
execute if score $end_above_overworld 2tw.config matches 1 run function 2mal3:2tw/tweaks/end_above_overworld/overworld/effect
