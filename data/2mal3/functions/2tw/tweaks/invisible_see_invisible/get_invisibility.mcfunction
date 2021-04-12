# Description: Adds players with new invisibility effect to the invisible team, so they can see each other
# AS: player, AT: @s
# Called from function: 2mal3:2tw/tweaks/invisible_see_invisible/get_invisibility_test
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3'sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Player ","color":"aqua"},{"selector":"@s","color":"gray"},{"text":" is invisible.","color":"aqua"}]

# Adds player to the invisible team
team join 2tw.invisible @s
