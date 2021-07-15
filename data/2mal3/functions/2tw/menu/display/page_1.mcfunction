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
tellraw @s [{"text":"< ------------ ","color":"yellow"},{"text":"1/2","color":"gold"},{"text":" ------------ ","color":"yellow"},{"text":">","color":"gold","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/display/page_2"}}]
tellraw @s {"text":""}

# anti_creeper_grief
execute if score $anti_creeper_grief 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/anti_creeper_grief/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Anti creeper grief","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents Creeper from causing block damage."}}]
execute if score $anti_creeper_grief 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/anti_creeper_grief/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Anti creeper grief","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents Creeper from causing block damage."}}]

# armor_stand_arms
execute if score $armor_stand_arms 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/armor_stand_arms/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Armor Stand Arms","color":"gold","hoverEvent":{"action":"show_text","contents":"Gives all armor stands arms."}}]
execute if score $armor_stand_arms 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/armor_stand_arms/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Armor Stand Arms","color":"gold","hoverEvent":{"action":"show_text","contents":"Gives all armor stands arms."}}]

# better_end_crystals
execute if score $better_end_crystals 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/better_end_crystals/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Better End Crystals","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents protected End Crystals from being easily destroyed from the ground."}}]
execute if score $better_end_crystals 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/better_end_crystals/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Better End Crystals","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents protected End Crystals from being easily destroyed from the ground."}}]

# block_damage
execute if score $block_damage 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/block_damage/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Block damage","color":"gold","hoverEvent":{"action":"show_text","contents":"Players standing in rose bushes or stonecutters get damage."}}]
execute if score $block_damage 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/block_damage/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Block damage","color":"gold","hoverEvent":{"action":"show_text","contents":"Players standing in rose bushes or stonecutters get damage."}}]

# bush_hiding
execute if score $bush_hiding 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/bush_hiding/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Bush hiding","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who sneak in high plants become invisible."}}]
execute if score $bush_hiding 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/bush_hiding/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Bush hiding","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who sneak in high plants become invisible."}}]

# damage_infection
execute if score $damage_infection 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/damage_infection/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Damage infection","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who take damage have a certain probability to get infected and receive negative effects."}}]
execute if score $damage_infection 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/damage_infection/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Damage infection","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who take damage have a certain probability to get infected and receive negative effects."}}]

# death_coordinates
execute if score $death_coordinates 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/death_coordinates/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Death coordinates","color":"gold","hoverEvent":{"action":"show_text","contents":"In case of a death, the coordinates and the dimension of the dead point are displayed."}}]
execute if score $death_coordinates 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/death_coordinates/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Death coordinates","color":"gold","hoverEvent":{"action":"show_text","contents":"In case of a death, the coordinates and the dimension of the dead point are displayed."}}]

# disabled_ender_eyes
execute if score $disabled_ender_eyes 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/disabled_ender_eyes/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Disabled ender eyes","color":"gold","hoverEvent":{"action":"show_text","contents":"Ender eyes can no longer be used."}}]
execute if score $disabled_ender_eyes 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/disabled_ender_eyes/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Disabled ender eyess","color":"gold","hoverEvent":{"action":"show_text","contents":"Ender eyes can no longer be used."}}]

# end_above_overworld
execute if score $end_above_overworld 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/end_above_overworld/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" End above overworld","color":"gold","hoverEvent":{"action":"show_text","contents":"The player can go the end by flying high up in the overworld, and back by falling into the void in the end."}}]
execute if score $end_above_overworld 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/end_above_overworld/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" End above overworld","color":"gold","hoverEvent":{"action":"show_text","contents":"The player can go the end by flying high up in the overworld, and back by falling into the void in the end."}}]

# glow_berries_glow
execute if score $glow_berries_glow 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/glow_berries_glow/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Glow Berries glow","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who eat glow berries get a short glowing effect."}}]
execute if score $glow_berries_glow 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/glow_berries_glow/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Glow Berries glow","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who eat glow berries get a short glowing effect."}}]

# invisible_see_invisible
execute if score $invisible_see_invisible 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/invisible_see_invisible/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Invisible see invisible","color":"gold","hoverEvent":{"action":"show_text","contents":"Invisible can see each other."}}]
execute if score $invisible_see_invisible 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/invisible_see_invisible/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Invisible see invisible","color":"gold","hoverEvent":{"action":"show_text","contents":"Invisible can see each other."}}]

# nerfed_elytra
execute if score $nerfed_elytra 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/nerfed_elytra/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Nerfed elytra","color":"gold","hoverEvent":{"action":"show_text","contents":"Nerfs Elytras by making them impossible to enchant or repair."}}]
execute if score $nerfed_elytra 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/nerfed_elytra/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Nerfed elytra","color":"gold","hoverEvent":{"action":"show_text","contents":"Nerfs Elytras by making them impossible to enchant or repair."}}]

# no_to_expensive
execute if score $no_to_expensive 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/no_to_expensive/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" No to expensive","color":"gold","hoverEvent":{"action":"show_text","contents":"Place an unrepairable item in an item frame on an anvil to reset its repair cost."}}]
execute if score $no_to_expensive 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/no_to_expensive/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" No to expensive","color":"gold","hoverEvent":{"action":"show_text","contents":"Place an unrepairable item in an item frame on an anvil to reset its repair cost."}}]

# old_regeneration
execute if score $old_regeneration 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/old_regeneration/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Old regeneration","color":"gold","hoverEvent":{"action":"show_text","contents":"The old pre 1.9 regeneration."}}]
execute if score $old_regeneration 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/old_regeneration/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Old regeneration","color":"gold","hoverEvent":{"action":"show_text","contents":"The old pre 1.9 regeneration."}}]

# path_generator
execute if score $path_generator 2tw.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/path_generator/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Path generator","color":"gold","hoverEvent":{"action":"show_text","contents":"Slowly generates a path along much-used routes."}}]
execute if score $path_generator 2tw.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:2tw/menu/buttons/path_generator/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Path generator","color":"gold","hoverEvent":{"action":"show_text","contents":"Slowly generates a path along much-used routes."}}]

# End
tellraw @s {"text":""}

