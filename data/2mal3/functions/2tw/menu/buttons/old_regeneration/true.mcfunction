# Description: Enables old_regeneration
# AS: player, AT: player
# Called from function: 2mal3:2tw/menu/display
# Datapack by 2mal3

# Saves the setting
scoreboard players set $old_regeneration 2tw.config 1
# Disables natural Regeneration
gamerule naturalRegeneration false

# Displays the updated config menu
function 2mal3:2tw/menu/display
