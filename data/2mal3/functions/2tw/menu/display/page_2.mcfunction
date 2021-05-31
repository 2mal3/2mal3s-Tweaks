# Description: Display menu
# AS: player, AT: player
# Called from function tag: 2mal3:2tw/menu
# Datapack by 2mal3

# No anoying command feedback
gamerule sendCommandFeedback false
schedule function 2mal3:2tw/menu/send_command_feedback_true 1t

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~

# Display menu
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s {"text":" \u0020 \u0020 \u00202mal3's Tweaks Config","bold":true,"color":"gold"}
tellraw @s [{"text":"<","color":"gold","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/display/page_1"}},{"text":" ------------ ","color":"yellow","clickEvent":{"action":"run_command","value":""}},{"text":"2/2","color":"gold","clickEvent":{"action":"run_command","value":""}},{"text":" ------------ >","color":"yellow","clickEvent":{"action":"run_command","value":""}}]
tellraw @s {"text":""}

# realistic_fire
execute if score $realistic_fire 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/realistic_fire/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic fire","color":"gold","hoverEvent":{"action":"show_text","contents":"Fire is more relaistic."}}]
execute if score $realistic_fire 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/realistic_fire/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic fire","color":"gold","hoverEvent":{"action":"show_text","contents":"Fire is more relaistic."}}]

# server_time
execute if score $server_time 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/server_time/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Server time","color":"gold","hoverEvent":{"action":"show_text","contents":"As long as no player is on the server, the time is stopped."}}]
execute if score $server_time 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/server_time/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Server time","color":"gold","hoverEvent":{"action":"show_text","contents":"As long as no player is on the server, the time is stopped."}}]

# speed_paths
execute if score $speed_paths 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/speed_paths/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Speed paths","color":"gold","hoverEvent":{"action":"show_text","contents":"You can run faster on path blocks."}}]
execute if score $speed_paths 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/speed_paths/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Speed paths","color":"gold","hoverEvent":{"action":"show_text","contents":"You can run faster on path blocks."}}]

# wandering_trader_notifications
execute if score $wandering_trader_notifications 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/wandering_trader_notifications/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Wandering Trader notifications","color":"gold","hoverEvent":{"action":"show_text","contents":"When a Wandering Trader appears a notification is sent to all players and gets a short glowing effect."}}]
execute if score $wandering_trader_notifications 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/wandering_trader_notifications/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Wandering Trader notifications","color":"gold","hoverEvent":{"action":"show_text","contents":"When a Wandering Trader appears a notification is sent to all players and gets a short glowing effect."}}]

# End
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n"}

