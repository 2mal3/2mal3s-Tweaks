# Description: Disables unlock_all_recipes
# AS: player, AT: player
# Called from function: 2mal3:2tw/menu/display/page_2
# Datapack by 2mal3

# Saves the setting
scoreboard players set $unlock_all_recipes 2tw.config 0

# Displays the updated config menu
function 2mal3:2tw/menu/display/page_2