# Description: Slowly generates a path along much traveled routes 
# AS: server, AT: server
# Called from function: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Generates path blocks with a certain chanche for running or sprinting players 
execute as @a[scores={2tw.walk=200..}] if predicate 2mal3:2tw/tweaks/path_generator/walk_random at @s positioned ~ ~-0.8 ~ run function 2mal3:2tw/tweaks/path_generator/place
execute as @a[scores={2tw.sprint=50..}] if predicate 2mal3:2tw/tweaks/path_generator/sprint_random at @s positioned ~ ~-0.8 ~ run function 2mal3:2tw/tweaks/path_generator/place

# Resets the scoreboards 
scoreboard players reset @a[scores={2tw.walk=1..}] 2tw.walk
scoreboard players reset @a[scores={2tw.sprint=1..}] 2tw.sprint
