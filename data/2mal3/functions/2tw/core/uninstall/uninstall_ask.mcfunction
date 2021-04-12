# Description: Ask the player if he really wants to uninstall the datapack
# Called from tag: 2mal3:2tw/uninstall
# Datapack by 2mal3

tellraw @s [{"text":"Do you really want to deinstall 2mal3's Tweaks by 2mal3?","color":"red"},{"text":"\n"},{"text":"[No]","color":"dark_green","hoverEvent":{"action":"show_text","value":"*click*"},"clickEvent":{"action":"run_command","value":"/tellraw @s {\"text\":\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nThank you!\",\"color\":\"gold\"}"}},{"text":"\u0020"},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/core/uninstall/uninstall"},"hoverEvent":{"action":"show_text","value":"*click*"}}]
