# Description: Tests if the realistic torches module is activated
# AS: player who placed a torch , AT: @s
# Called from advancement: 2mal3:2tw/tweaks/realistic_torches/placed_torch
# Datapack by 2mal3

advancement revoke @s only 2mal3:2tw/tweaks/realistic_torches/placed_torch
execute if score $realistic_torches 2tw.config matches 1 anchored eyes run function 2mal3:2tw/tweaks/realistic_torches/place/raycast
