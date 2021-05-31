# Description: Disables old_regeneration
# AS: player, AT: player
# Called from function: 2mal3:2tw/menu/display/page_1
# Datapack by 2mal3

# Saves the setting
scoreboard players set $old_regeneration 2tw.config 0
# Enables natural Regeneration
gamerule naturalRegeneration true

# Displays the updated config menu
function 2mal3:2tw/menu/display/page_1
