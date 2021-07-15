# Description: Tests if the end_above_overworld module is enabled
# AS: player in the end under -100, AT: @s
# Called from advancement: 2mal3:2tw/tweaks/end_above_overworld/end
# Datapack by 2mal3

# Reset advancement
advancement revoke @s only 2mal3:2tw/tweaks/end_above_overworld/end

# Moves the player to the overworld if module is enabled
execute if score $end_above_overworld 2tw.config matches 1 run function 2mal3:2tw/tweaks/end_above_overworld/end/effect
