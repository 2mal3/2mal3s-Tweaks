# Description: Clears the ender eye entity when using an ender eye item
# AS: player, AT: player
# Called from advancement: 2mal3:2tw/twaks/disabled_ender_eyes
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
execute if score $disabled_ender_eyes 2tw.config matches 1 run tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Deleted","color":"aqua"}]


# Deletes the ender eye if enabled
execute if score $disabled_ender_eyes 2tw.config matches 1 run kill @e[type=minecraft:eye_of_ender,tag=!global.ignore,tag=!global.ignore.kill]

# Resets the advancement
advancement revoke @s only 2mal3:2tw/tweaks/disabled_ender_eyes
