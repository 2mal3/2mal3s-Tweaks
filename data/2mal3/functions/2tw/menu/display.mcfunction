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
tellraw @s ["",{"text":" \u0020 \u0020 \u0020 \u00202mal3s Tweaks Config","bold":true,"color":"gold"},{"text":"\n"},{"text":"--------------------------------","color":"yellow"}]
tellraw @s {"text":""}

# invisible_see_invisible
execute if score $invisible_see_invisible 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/invisible_see_invisible/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Invisible see invisible","color":"gold","hoverEvent":{"action":"show_text","contents":"Invisible can see each other."}}]
execute if score $invisible_see_invisible 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/invisible_see_invisible/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Invisible see invisible","color":"gold","hoverEvent":{"action":"show_text","contents":"Invisible can see each other."}}]

# speed_paths
execute if score $speed_paths 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/speed_paths/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Speed paths","color":"gold","hoverEvent":{"action":"show_text","contents":"You can run faster on path blocks."}}]
execute if score $speed_paths 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/speed_paths/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Speed paths","color":"gold","hoverEvent":{"action":"show_text","contents":"You can run faster on path blocks."}}]

# server_time
execute if score $server_time 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/server_time/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Server time","color":"gold","hoverEvent":{"action":"show_text","contents":"As long as no player is on the server, the time is stopped."}}]
execute if score $server_time 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/server_time/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Server time","color":"gold","hoverEvent":{"action":"show_text","contents":"As long as no player is on the server, the time is stopped."}}]

# nerfed_elytra
execute if score $nerfed_elytra 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/nerfed_elytra/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Nerfed elytra","color":"gold","hoverEvent":{"action":"show_text","contents":"Nerfs Elytras by making them impossible to enchant or repair."}}]
execute if score $nerfed_elytra 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/nerfed_elytra/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Nerfed elytra","color":"gold","hoverEvent":{"action":"show_text","contents":"Nerfs Elytras by making them impossible to enchant or repair."}}]

# better_end_crystals
execute if score $better_end_crystals 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/better_end_crystals/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Better End Crystals","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents protected End Crystals from being easily destroyed from the ground."}}]
execute if score $better_end_crystals 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/better_end_crystals/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Better End Crystals","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents protected End Crystals from being easily destroyed from the ground."}}]

# anti_creeper_grief
execute if score $anti_creeper_grief 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/anti_creeper_grief/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Anti creeper grief","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents Creeper from causing block damage."}}]
execute if score $anti_creeper_grief 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/anti_creeper_grief/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Anti creeper grief","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents Creeper from causing block damage."}}]

# realistic_fire
execute if score $realistic_fire 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/realistic_fire/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic fire","color":"gold","hoverEvent":{"action":"show_text","contents":"Fire is more relaistic."}}]
execute if score $realistic_fire 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/realistic_fire/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic fire","color":"gold","hoverEvent":{"action":"show_text","contents":"Fire is more relaistic."}}]

# wandering_trader_notifications
execute if score $wandering_trader_notifications 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/wandering_trader_notifications/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Wandering Trader notifications","color":"gold","hoverEvent":{"action":"show_text","contents":"When a Wandering Trader appears a notification is sent to all players and gets a short glowing effect."}}]
execute if score $wandering_trader_notifications 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/wandering_trader_notifications/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Wandering Trader notifications","color":"gold","hoverEvent":{"action":"show_text","contents":"When a Wandering Trader appears a notification is sent to all players and gets a short glowing effect."}}]

# disabled_ender_eyes
execute if score $disabled_ender_eyes 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/disabled_ender_eyes/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Disabled ender eyes","color":"gold","hoverEvent":{"action":"show_text","contents":"Ender eyes can no longer be used."}}]
execute if score $disabled_ender_eyes 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/disabled_ender_eyes/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Disabled ender eyess","color":"gold","hoverEvent":{"action":"show_text","contents":"Ender eyes can no longer be used."}}]

# death_coordinates
execute if score $death_coordinates 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/death_coordinates/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Death coordinates","color":"gold","hoverEvent":{"action":"show_text","contents":"In case of a death, the coordinates and the dimension of the dead point are displayed."}}]
execute if score $death_coordinates 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/death_coordinates/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Death coordinates","color":"gold","hoverEvent":{"action":"show_text","contents":"In case of a death, the coordinates and the dimension of the dead point are displayed."}}]

# path_generator
execute if score $path_generator 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/path_generator/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Path generator","color":"gold","hoverEvent":{"action":"show_text","contents":"Slowly generates a path along much-used routes."}}]
execute if score $path_generator 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/path_generator/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Path generator","color":"gold","hoverEvent":{"action":"show_text","contents":"Slowly generates a path along much-used routes."}}]

# End
tellraw @s {"text":""}

