# Description: Disables block_damage
# AS: player, AT: player
# Called from function: 2mal3:2tw/menu/display
# Datapack by 2mal3

# Saves the setting
scoreboard players set $block_damage 2tw.config 0

# Displays the updated config menu
function 2mal3:2tw/menu/display
