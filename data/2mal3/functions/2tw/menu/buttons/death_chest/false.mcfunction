# Description: Disables death_chest
# AS: player, AT: player
# Called from function: 2mal3:2tw/menu/display/page_1
# Datapack by 2mal3

# Saves the setting
scoreboard players set $death_chest 2tw.config 0
# Reset the gamerule 
gamerule doImmediateRespawn false

# Displays the updated config menu
function 2mal3:2tw/menu/display/page_1
