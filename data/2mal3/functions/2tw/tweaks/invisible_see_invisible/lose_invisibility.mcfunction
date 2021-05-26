# Description: Removes players with stopping invisibility effect from the team
# AS: player, AT: @s
# Called from advancements: 2mal3:2tw/tweaks/invisible_see_invisible/lose_invisibility
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Player is no longer invisible.","color":"aqua"}]


# Removes the player with stopping invisibility effect from the team
team leave @s

# Resets the advancements
advancement revoke @s only 2mal3:2tw/tweaks/invisible_see_invisible/get_invisibility
advancement revoke @s only 2mal3:2tw/tweaks/invisible_see_invisible/lose_invisibility
