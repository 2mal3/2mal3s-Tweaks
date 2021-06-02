# Description: Sets the spawn point of a dead player at a random location within a radius of 2000 blocks around the spawn
# AS: @a[scores={2tw.death=1..}], AT: server
# Called from function: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Respawned at a random position","color":"aqua"}]


summon minecraft:marker ~ ~ ~ {UUID: [I; 669842609, -1209579212, -2001643774, 1708722797]}
spreadplayers ~ ~ 0 20100 true 27ecfcb1-b7e7-4934-88b1-570265d90a6d
execute at 27ecfcb1-b7e7-4934-88b1-570265d90a6d run spawnpoint @s ~ ~ ~
kill 27ecfcb1-b7e7-4934-88b1-570265d90a6d
