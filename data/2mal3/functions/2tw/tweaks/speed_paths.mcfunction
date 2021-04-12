# Description: Gives speed to a player running on path blocks
# AS: player, AT: @s
# Called from advancement: 2mal3:2tw/tweaks/speed_paths
# Datapack by 2mal3

# Gives the player speed if speed_paths rule is enabled
execute if score $speed_paths 2tw.config matches 1 unless predicate 2mal3:2tw/tweaks/speed run effect give @s minecraft:speed 1 0 true

# Reset the advancement
advancement revoke @s only 2mal3:2tw/tweaks/speed_paths
