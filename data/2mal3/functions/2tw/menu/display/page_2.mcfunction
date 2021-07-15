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

# projectile_block_damage
execute if score $projectile_block_damage 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/projectile_block_damage/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Projectile block damage","color":"gold","hoverEvent":{"action":"show_text","contents":"Some projectiles can break glass panes."}}]
execute if score $projectile_block_damage 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/projectile_block_damage/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Projectile block damage","color":"gold","hoverEvent":{"action":"show_text","contents":"Some projectiles can break glass panes."}}]

# random_respawn
execute if score $random_respawn 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/random_respawn/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Random respawn","color":"gold","hoverEvent":{"action":"show_text","contents":"When you die, you respawn at a random location within a radius of 2000 blocks around the spawn."}}]
execute if score $random_respawn 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/random_respawn/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Random respawn","color":"gold","hoverEvent":{"action":"show_text","contents":"When you die, you respawn at a random location within a radius of 2000 blocks around the spawn."}}]

# realistic_fire
execute if score $realistic_fire 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/realistic_fire/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic fire","color":"gold","hoverEvent":{"action":"show_text","contents":"Fire is more relaistic."}}]
execute if score $realistic_fire 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/realistic_fire/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic fire","color":"gold","hoverEvent":{"action":"show_text","contents":"Fire is more relaistic."}}]

# realistic_torches
execute if score $realistic_torches 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/realistic_torches/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic torches","color":"gold","hoverEvent":{"action":"show_text","contents":"Torches burn out over time."}}]
execute if score $realistic_torches 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/realistic_torches/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic torches","color":"gold","hoverEvent":{"action":"show_text","contents":"Torches burn out over time."}}]
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $realistic_torches_time 2tw.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic torches burn time: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Time until placed torches burn out in minutes (default: 20)."}},{"score":{"name":"$realistic_torches_time","objective":"2tw.config"},"color":"red"}]

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
tellraw @s {"text":"\n\n\n\n\n\n\n"}

