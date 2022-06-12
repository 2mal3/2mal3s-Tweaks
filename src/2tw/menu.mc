import ../../macros/log.mcm


function click {
  playsound minecraft:ui.button.click master @s
  # Disables command fedback for a short time, so that no disturbing message is displayed
  gamerule sendCommandFeedback false
  schedule 1t replace {
    gamerule sendCommandFeedback true
  }
}

function page {
  execute if score %page 2tw.data matches 1 run function 2tw:menu/menu/page_0
  execute if score %page 2tw.data matches 2 run function 2tw:menu/menu/page_1
  execute if score %page 2tw.data matches 3 run function 2tw:menu/menu/page_2
  # execute if score %page 2tw.data matches 4 run function 2tw:menu/menu/page_3
}


dir menu {
  function page_0 {
    tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
    tellraw @s {"text":"       2mal3's Tweaks Config","bold":true,"color":"gold"}
    tellraw @s [{"text":"<<","color":"yellow"},{"text":" ------------ ","color":"yellow"},{"text":"1/3","color":"gold"},{"text":" ------------ ","color":"yellow"},{"text":">>","color":"gold","clickEvent":{"action":"run_command","value":"/function 2tw:menu/menu/page_1"}}]
    tellraw @s {"text":""}
    
    scoreboard players set %page 2tw.data 1
    function 2tw:menu/click

    execute if data storage 2tw:data gamerules{antiCreeperGrief: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/anti_creeper_grief/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Anti Creeper grief","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents Creeper from causing block damage."}}]
    }
    execute if data storage 2tw:data gamerules{antiCreeperGrief: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/anti_creeper_grief/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Anti Creeper grief","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents Creeper from causing block damage."}}]
    }

    execute if data storage 2tw:data gamerules{armorStandArms: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/armor_stand_arms/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Armor Stand Arms","color":"gold","hoverEvent":{"action":"show_text","contents":"Gives all armor stands arms."}}]
    }
    execute if data storage 2tw:data gamerules{armorStandArms: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/armor_stand_arms/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Armor Stand Arms","color":"gold","hoverEvent":{"action":"show_text","contents":"Gives all armor stands arms."}}]
    }

    execute if data storage 2tw:data gamerules{betterEndCrystals: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/better_end_crystals/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Better End Crystals","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents protected End Crystals from being easily destroyed from the ground."}}]
    }
    execute if data storage 2tw:data gamerules{betterEndCrystals: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/better_end_crystals/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Better End Crystals","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents protected End Crystals from being easily destroyed from the ground."}}]
    }

    execute if data storage 2tw:data gamerules{blockDamage: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/block_damage/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Block Damage","color":"gold","hoverEvent":{"action":"show_text","contents":"Players standing in rose bushes or stonecutters get damage."}}]
    }
    execute if data storage 2tw:data gamerules{blockDamage: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/block_damage/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Block Damage","color":"gold","hoverEvent":{"action":"show_text","contents":"Players standing in rose bushes or stonecutters get damage."}}]
    }

    execute if data storage 2tw:data gamerules{bushHiding: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/bush_hiding/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Bush hiding","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who sneak in high plants become invisible."}}]
    }
    execute if data storage 2tw:data gamerules{bushHiding: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/bush_hiding/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Bush hiding","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who sneak in high plants become invisible."}}]
    }

    execute if data storage 2tw:data gamerules{creativeInstaTame: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/creative_insta_tame/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Creative insta tame","color":"gold","hoverEvent":{"action":"show_text","contents":"Horses are tamed immediately in creative mode."}}]
    }
    execute if data storage 2tw:data gamerules{creativeInstaTame: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/creative_insta_tame/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Creative insta tame","color":"gold","hoverEvent":{"action":"show_text","contents":"Horses are tamed immediately in creative mode."}}]
    }

    execute if data storage 2tw:data gamerules{creativeOnePunch: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/creative_one_punch/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Creative One Punch","color":"gold","hoverEvent":{"action":"show_text","contents":"Kills all entities in creative mode instantly."}}]
    }
    execute if data storage 2tw:data gamerules{creativeOnePunch: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/creative_one_punch/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Creative One Punch","color":"gold","hoverEvent":{"action":"show_text","contents":"Kills all entities in creative mode instantly."}}]
    }

    execute if data storage 2tw:data gamerules{colouredDimensionNames: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/coloured_dimension_names/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Coloured Dimension Names","color":"gold","hoverEvent":{"action":"show_text","contents":"Colors the player name according to the current dimension."}}]
    }
    execute if data storage 2tw:data gamerules{colouredDimensionNames: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/coloured_dimension_names/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Coloured Dimension Names","color":"gold","hoverEvent":{"action":"show_text","contents":"Colors the player name according to the current dimension."}}]
    }

    execute if data storage 2tw:data gamerules{damageInfection: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/damage_infection/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Damage Infection","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who take damage have a certain probability to get infected and receive negative effects."}}]
    }
    execute if data storage 2tw:data gamerules{damageInfection: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/damage_infection/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Damage Infection","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who take damage have a certain probability to get infected and receive negative effects."}}]
    }

    execute if data storage 2tw:data gamerules{deathChest: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/death_chest/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Death Chest","color":"gold","hoverEvent":{"action":"show_text","contents":"Spawns a death chest at died players with their items."}}]
    }
    execute if data storage 2tw:data gamerules{deathChest: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/death_chest/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Death Chest","color":"gold","hoverEvent":{"action":"show_text","contents":"Spawns a death chest at died players with their items."}}]
    }

    execute if data storage 2tw:data gamerules{deathCoordinates: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/death_coordinates/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Death Coordinates","color":"gold","hoverEvent":{"action":"show_text","contents":"In case of a death, the coordinates and the dimension of the dead point are displayed."}}]
    }
    execute if data storage 2tw:data gamerules{deathCoordinates: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/death_coordinates/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Death Coordinates","color":"gold","hoverEvent":{"action":"show_text","contents":"In case of a death, the coordinates and the dimension of the dead point are displayed."}}]
    }

    execute if data storage 2tw:data gamerules{disabledEnderEyes: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/disabled_ender_eyes/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Disabled Ender Eyes","color":"gold","hoverEvent":{"action":"show_text","contents":"Ender Eyes can not be thrown."}}]
    }
    execute if data storage 2tw:data gamerules{disabledEnderEyes: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/disabled_ender_eyes/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Disabled Ender Eyes","color":"gold","hoverEvent":{"action":"show_text","contents":"Ender Eyes can not be thrown."}}]
    }

    execute if data storage 2tw:data gamerules{dynamicLight: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/dynamic_light/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Dynamic Light","color":"gold","hoverEvent":{"action":"show_text","contents":"Torches and other light sources emit actual light."}}]
    }
    execute if data storage 2tw:data gamerules{dynamicLight: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/dynamic_light/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Dynamic Light","color":"gold","hoverEvent":{"action":"show_text","contents":"Torches and other light sources emit actual light."}}]
    }

    execute if data storage 2tw:data gamerules{elytraClosing: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/elytra_closing/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Elytra Closing","color":"gold","hoverEvent":{"action":"show_text","contents":"Sneak while flying with the Elytra to close it."}}]
    }
    execute if data storage 2tw:data gamerules{elytraClosing: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/elytra_closing/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Elytra Closing","color":"gold","hoverEvent":{"action":"show_text","contents":"Sneak while flying with the Elytra to close it."}}]
    }

    execute if data storage 2tw:data gamerules{endAboveOverworld: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/end_above_overworld/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" End above Overworld","color":"gold","hoverEvent":{"action":"show_text","contents":"The player can go the end by flying high up in the overworld, and back by falling into the void in the end."}}]
    }
    execute if data storage 2tw:data gamerules{endAboveOverworld: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/end_above_overworld/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" End above Overworld","color":"gold","hoverEvent":{"action":"show_text","contents":"The player can go the end by flying high up in the overworld, and back by falling into the void in the end."}}]
    }

    tellraw @s {"text":""}
  }

  function page_1 {
    tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
    tellraw @s {"text":"       2mal3's Tweaks Config","bold":true,"color":"gold"}
    tellraw @s [{"text":"<<","color":"gold","clickEvent":{"action":"run_command","value":"/function 2tw:menu/menu/page_0"}},{"text":" ------------ ","color":"yellow"},{"text":"2/3","color":"gold"},{"text":" ------------ ","color":"yellow"},{"text":">>","color":"gold","clickEvent":{"action":"run_command","value":"/function 2tw:menu/menu/page_2"}}]
    tellraw @s {"text":""}
    
    scoreboard players set %page 2tw.data 2
    function 2tw:menu/click

    execute if data storage 2tw:data gamerules{fishTraps: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/fish_traps/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Fish Traps","color":"gold","hoverEvent":{"action":"show_text","contents":"Place a barrel in water to catch fish over time."}}]
    }
    execute if data storage 2tw:data gamerules{fishTraps: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/fish_traps/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Fish Traps","color":"gold","hoverEvent":{"action":"show_text","contents":"Place a barrel in water to catch fish over time."}}]
    }

    execute if data storage 2tw:data gamerules{glowBerriesGlow: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/glow_berries_glow/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Glow Berries glow","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who eat glow berries get a short glowing effect."}}]
    }
    execute if data storage 2tw:data gamerules{glowBerriesGlow: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/glow_berries_glow/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Glow Berries glow","color":"gold","hoverEvent":{"action":"show_text","contents":"Players who eat glow berries get a short glowing effect."}}]
    }

    execute if data storage 2tw:data gamerules{harderPowderSnow: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/harder_powder_snow/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Harder Powder Snow","color":"gold","hoverEvent":{"action":"show_text","contents":"Powdery snow gives mining fatigue when sinking."}}]
    }
    execute if data storage 2tw:data gamerules{harderPowderSnow: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/harder_powder_snow/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Harder Powder Snow","color":"gold","hoverEvent":{"action":"show_text","contents":"Powdery snow gives mining fatigue when sinking."}}]
    }

    execute if data storage 2tw:data gamerules{higherBellRange: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/higher_bell_range/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Higher Bell Range","color":"gold","hoverEvent":{"action":"show_text","contents":"Bells reveal more distant Pillagers."}}]
    }
    execute if data storage 2tw:data gamerules{higherBellRange: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/higher_bell_range/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Higher Bell Range","color":"gold","hoverEvent":{"action":"show_text","contents":"Bells reveal more distant Pillagers."}}]
    }

    execute if data storage 2tw:data gamerules{invisibleSeeInvisible: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/invisible_see_invisible/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Invisible see Invisible","color":"gold","hoverEvent":{"action":"show_text","contents":"Invisible can see each other."}}]
    }
    execute if data storage 2tw:data gamerules{invisibleSeeInvisible: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/invisible_see_invisible/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Invisible see Invisible","color":"gold","hoverEvent":{"action":"show_text","contents":"Invisible can see each other."}}]
    }

    execute if data storage 2tw:data gamerules{itemSign: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/item_sign/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Item Sign","color":"gold","hoverEvent":{"action":"show_text","contents":"Allow you to sign items with the command /trigger sign."}}]
    }
    execute if data storage 2tw:data gamerules{itemSign: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/item_sign/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Item Sign","color":"gold","hoverEvent":{"action":"show_text","contents":"Allow you to sign items with the command /trigger sign."}}]
    }

    execute if data storage 2tw:data gamerules{invisibleItemFrames: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/invisible_item_frames/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Invisible Item Frames","color":"gold","hoverEvent":{"action":"show_text","contents":"Surround an Item Frame in the crafting table with Glass Panes to get an Invisible Item Frame."}}]
    }
    execute if data storage 2tw:data gamerules{invisibleItemFrames: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/invisible_item_frames/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Invisible Item Frames","color":"gold","hoverEvent":{"action":"show_text","contents":"Surround an Item Frame in the crafting table with Glass Panes to get an Invisible Item Frame."}}]
    }

    execute if data storage 2tw:data gamerules{longerEntityDeath: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/longer_entity_death/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Longer Entity Death","color":"gold","hoverEvent":{"action":"show_text","contents":"The death animation of entities is longer."}}]
    }
    execute if data storage 2tw:data gamerules{longerEntityDeath: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/longer_entity_death/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Longer Entity Death","color":"gold","hoverEvent":{"action":"show_text","contents":"The death animation of entities is longer."}}]
    }

    execute if data storage 2tw:data gamerules{nerfedElytra: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/nerfed_elytra/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Nerfed Elytra","color":"gold","hoverEvent":{"action":"show_text","contents":"Nerfs Elytras by making them impossible to enchant with mending."}}]
    }
    execute if data storage 2tw:data gamerules{nerfedElytra: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/nerfed_elytra/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Nerfed Elytra","color":"gold","hoverEvent":{"action":"show_text","contents":"Nerfs Elytras by making them impossible to enchant with mending."}}]
    }

    execute if data storage 2tw:data gamerules{noThunderstormSleep: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/no_thunderstorm_sleep/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" No Thunderstorm Sleep","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents sleeping during thunderstorms."}}]
    }
    execute if data storage 2tw:data gamerules{noThunderstormSleep: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/no_thunderstorm_sleep/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" No Thunderstorm Sleep","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents sleeping during thunderstorms."}}]
    }

    execute if data storage 2tw:data gamerules{noToExpensive: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/no_to_expensive/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" No to expensive","color":"gold","hoverEvent":{"action":"show_text","contents":"Place an unrepairable item in an item frame on an anvil to reset its repair cost."}}]
    }
    execute if data storage 2tw:data gamerules{noToExpensive: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/no_to_expensive/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" No to expensive","color":"gold","hoverEvent":{"action":"show_text","contents":"Place an unrepairable item in an item frame on an anvil to reset its repair cost."}}]
    }

    execute if data storage 2tw:data gamerules{oldRegeneration: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/old_regeneration/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Old Regeneration","color":"gold","hoverEvent":{"action":"show_text","contents":"The old pre 1.9 regeneration."}}]
    }
    execute if data storage 2tw:data gamerules{oldRegeneration: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/old_regeneration/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Old Regeneration","color":"gold","hoverEvent":{"action":"show_text","contents":"The old pre 1.9 regeneration."}}]
    }

    execute if data storage 2tw:data gamerules{onlyRuinedPortals: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/only_ruined_portals/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Only Ruined Portals","color":"gold","hoverEvent":{"action":"show_text","contents":"Traveling between dimensions is only possible with Ruined Portals."}}]
    }
    execute if data storage 2tw:data gamerules{onlyRuinedPortals: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/only_ruined_portals/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Only Ruined Portals","color":"gold","hoverEvent":{"action":"show_text","contents":"Traveling between dimensions is only possible with Ruined Portals."}}]
    }

    execute if data storage 2tw:data gamerules{pathGenerator: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/path_generator/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Path Generator","color":"gold","hoverEvent":{"action":"show_text","contents":"Slowly generates a path along much-used routes."}}]
    }
    execute if data storage 2tw:data gamerules{pathGenerator: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/path_generator/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Path Generator","color":"gold","hoverEvent":{"action":"show_text","contents":"Slowly generates a path along much-used routes."}}]
    }

    execute if data storage 2tw:data gamerules{projectileBlockDamage: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/projectile_block_damage/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Projectile Block Damage","color":"gold","hoverEvent":{"action":"show_text","contents":"Some projectiles can break glass panes."}}]
    }
    execute if data storage 2tw:data gamerules{projectileBlockDamage: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/projectile_block_damage/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Projectile Block Damage","color":"gold","hoverEvent":{"action":"show_text","contents":"Some projectiles can break glass panes."}}]
    }

    tellraw @s {"text":""}
  }

  function page_2 {
    tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
    tellraw @s {"text":"       2mal3's Tweaks Config","bold":true,"color":"gold"}
    tellraw @s [{"text":"<<","color":"gold","clickEvent":{"action":"run_command","value":"/function 2tw:menu/menu/page_1"}},{"text":" ------------ ","color":"yellow"},{"text":"3/3","color":"gold"},{"text":" ------------ ","color":"yellow"},{"text":">>","color":"yellow"}]
    tellraw @s {"text":""}
    
    scoreboard players set %page 2tw.data 3
    function 2tw:menu/click

    execute if data storage 2tw:data gamerules{randomRespawn: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/random_respawn/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Random Respawn","color":"gold","hoverEvent":{"action":"show_text","contents":"When you die, you respawn at a random location within a radius of 2000 blocks around the spawn."}}]
    }
    execute if data storage 2tw:data gamerules{randomRespawn: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/random_respawn/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Random Respawn","color":"gold","hoverEvent":{"action":"show_text","contents":"When you die, you respawn at a random location within a radius of 2000 blocks around the spawn."}}]
    }

    execute if data storage 2tw:data gamerules{realisticFire: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/realistic_fire/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic Fire","color":"gold","hoverEvent":{"action":"show_text","contents":"Fire is more realistic."}}]
    }
    execute if data storage 2tw:data gamerules{realisticFire: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/realistic_fire/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic Fire","color":"gold","hoverEvent":{"action":"show_text","contents":"Fire is more realistic."}}]
    }

    #execute if data storage 2tw:data gamerules{realisticTorches: 0b} run {
    #  tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/realistic_torches/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic Torches","color":"gold","hoverEvent":{"action":"show_text","contents":"Torches burn out over time."}}]
    #}
    #execute if data storage 2tw:data gamerules{realisticTorches: 1b} run {
    #  tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/realistic_torches/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Realistic Torches","color":"gold","hoverEvent":{"action":"show_text","contents":"Torches burn out over time."}}]
    #}

    execute if data storage 2tw:data gamerules{ropeLadder: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/rope_ladder/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Rope Ladder","color":"gold","hoverEvent":{"action":"show_text","contents":"Place and destroy rope ladders with SHIFT."}}]
    }
    execute if data storage 2tw:data gamerules{ropeLadder: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/rope_ladder/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Rope Ladder","color":"gold","hoverEvent":{"action":"show_text","contents":"Place and destroy rope ladders with SHIFT."}}]
    }

    execute if data storage 2tw:data gamerules{selfPlantingSaplings: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/self_planting_saplings/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Self planting Saplings","color":"gold","hoverEvent":{"action":"show_text","contents":"Tree saplings lying on the ground can plant themselves with a certain probability."}}]
    }
    execute if data storage 2tw:data gamerules{selfPlantingSaplings: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/self_planting_saplings/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Self planting Saplings","color":"gold","hoverEvent":{"action":"show_text","contents":"Tree saplings lying on the ground can plant themselves with a certain probability."}}]
    }

    execute if data storage 2tw:data gamerules{serverTime: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/server_time/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Server Time","color":"gold","hoverEvent":{"action":"show_text","contents":"As long as no player is on the server, the time is stopped."}}]
    }
    execute if data storage 2tw:data gamerules{serverTime: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/server_time/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Server Time","color":"gold","hoverEvent":{"action":"show_text","contents":"As long as no player is on the server, the time is stopped."}}]
    }

    execute if data storage 2tw:data gamerules{spectatorSense: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/spectator_sense/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Spectator Sense","color":"gold","hoverEvent":{"action":"show_text","contents":"Players in spectator mode are displayed with individual particles."}}]
    }
    execute if data storage 2tw:data gamerules{spectatorSense: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/spectator_sense/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Spectator Sense","color":"gold","hoverEvent":{"action":"show_text","contents":"Players in spectator mode are displayed with individual particles."}}]
    }

    execute if data storage 2tw:data gamerules{speedPaths: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/speed_paths/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Speed Paths","color":"gold","hoverEvent":{"action":"show_text","contents":"You can run faster on path blocks."}}]
    }
    execute if data storage 2tw:data gamerules{speedPaths: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/speed_paths/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Speed Paths","color":"gold","hoverEvent":{"action":"show_text","contents":"You can run faster on path blocks."}}]
    }

    execute if data storage 2tw:data gamerules{spyglassSelection: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/spyglass_selection/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Spyglass Selection","color":"gold","hoverEvent":{"action":"show_text","contents":"Sneak while looking at an entity with a spyglass to highlight it for a short time."}}]
    }
    execute if data storage 2tw:data gamerules{spyglassSelection: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/spyglass_selection/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Spyglass Selection","color":"gold","hoverEvent":{"action":"show_text","contents":"Sneak while looking at an entity with a spyglass to highlight it for a short time."}}]
    }

    execute if data storage 2tw:data gamerules{squidInkBlindness: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/squid_ink_blindness/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Squid Ink Blindness","color":"gold","hoverEvent":{"action":"show_text","contents":"The ink from squids gives a blindness effect."}}]
    }
    execute if data storage 2tw:data gamerules{squidInkBlindness: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/squid_ink_blindness/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Squid Ink Blindness","color":"gold","hoverEvent":{"action":"show_text","contents":"The ink from squids gives a blindness effect."}}]
    }

    execute if data storage 2tw:data gamerules{tntAutoPrime: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/tnt_auto_prime/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" TNT auto prime","color":"gold","hoverEvent":{"action":"show_text","contents":"TNT ignite automatically as soon as they are placed."}}]
    }
    execute if data storage 2tw:data gamerules{tntAutoPrime: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/tnt_auto_prime/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" TNT auto prime","color":"gold","hoverEvent":{"action":"show_text","contents":"TNT ignite automatically as soon as they are placed."}}]
    }

    execute if data storage 2tw:data gamerules{unlockAllRecipes: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/unlock_all_recipes/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Unlock all Recipes","color":"gold","hoverEvent":{"action":"show_text","contents":"Automatically unlocks all recipes."}}]
    }
    execute if data storage 2tw:data gamerules{unlockAllRecipes: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/unlock_all_recipes/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Unlock all Recipes","color":"gold","hoverEvent":{"action":"show_text","contents":"Automatically unlocks all recipes."}}]
    }

    execute if data storage 2tw:data gamerules{visibleMarker: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/visible_marker/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Visible Marker","color":"gold","hoverEvent":{"action":"show_text","contents":""}}]
    }
    execute if data storage 2tw:data gamerules{visibleMarker: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/visible_marker/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Visible Marker","color":"gold","hoverEvent":{"action":"show_text","contents":""}}]
    }

    execute if data storage 2tw:data gamerules{wanderingTraderNotifications: 0b} run {
      tellraw @s [{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/wandering_trader_notifications/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Wandering Trader Notifications","color":"gold","hoverEvent":{"action":"show_text","contents":"When a Wandering Trader appears a notification is sent to all players and gets a short glowing effect."}}]
    }
    execute if data storage 2tw:data gamerules{wanderingTraderNotifications: 1b} run {
      tellraw @s [{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2tw:menu/buttons/wandering_trader_notifications/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Wandering Trader Notifications","color":"gold","hoverEvent":{"action":"show_text","contents":"When a Wandering Trader appears a notification is sent to all players and gets a short glowing effect."}}]
    }

    tellraw @s {"text":"\n\n"}
  }

}


dir buttons {
  dir item_sign {
    function on {
      data modify storage 2tw:data gamerules.itemSign set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.itemSign set value 0b
      function 2tw:menu/page
    }
  }

  dir invisible_item_frames {
    function on {
      data modify storage 2tw:data gamerules.invisibleItemFrames set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.invisibleItemFrames set value 0b
      function 2tw:menu/page
    }
  }

  dir self_planting_saplings {
    function on {
      data modify storage 2tw:data gamerules.selfPlantingSaplings set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.selfPlantingSaplings set value 0b
      function 2tw:menu/page
    }
  }

  dir rope_ladder {
    function on {
      data modify storage 2tw:data gamerules.ropeLadder set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.ropeLadder set value 0b
      function 2tw:menu/page
    }
  }

  dir elytra_closing {
    function on {
      data modify storage 2tw:data gamerules.elytraClosing set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.elytraClosing set value 0b
      function 2tw:menu/page
    }
  }

  dir anti_creeper_grief {
    function on {
      data modify storage 2tw:data gamerules.antiCreeperGrief set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.antiCreeperGrief set value 0b
      function 2tw:menu/page
    }
  }

  dir armor_stand_arms {
    function on {
      data modify storage 2tw:data gamerules.armorStandArms set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.armorStandArms set value 0b
      function 2tw:menu/page
    }
  }

  dir better_end_crystals {
    function on {
      data modify storage 2tw:data gamerules.betterEndCrystals set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.betterEndCrystals set value 0b
      function 2tw:menu/page
    }
  }

  dir block_damage {
    function on {
      data modify storage 2tw:data gamerules.blockDamage set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.blockDamage set value 0b
      function 2tw:menu/page
    }
  }

  dir bush_hiding {
    function on {
      data modify storage 2tw:data gamerules.bushHiding set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.bushHiding set value 0b
      function 2tw:menu/page
    }
  }

  dir creative_insta_tame {
    function on {
      data modify storage 2tw:data gamerules.creativeInstaTame set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.creativeInstaTame set value 0b
      function 2tw:menu/page
    }
  }

  dir creative_one_punch {
    function on {
      data modify storage 2tw:data gamerules.creativeOnePunch set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.creativeOnePunch set value 0b
      function 2tw:menu/page
    }
  }

  dir coloured_dimension_names {
    function on {
      data modify storage 2tw:data gamerules.colouredDimensionNames set value 1b
      function 2tw:menu/page
      # Reset all specific advancements so that each player can be immediately assigned to a dimension
      advancement revoke @a only 2tw:tweaks/coloured_dimension_names/overworld
      advancement revoke @a only 2tw:tweaks/coloured_dimension_names/nether
      advancement revoke @a only 2tw:tweaks/coloured_dimension_names/end
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.colouredDimensionNames set value 0b
      function 2tw:menu/page
      # Removes every player from the teams
      team leave @a[team=2tw.overworld]
      team leave @a[team=2tw.nether]
      team leave @a[team=2tw.end]
    }
  }

  dir damage_infection {
    function on {
      data modify storage 2tw:data gamerules.damageInfection set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.damageInfection set value 0b
      function 2tw:menu/page
    }
  }

  dir death_chest {
    function on {
      data modify storage 2tw:data gamerules.deathChest set value 1b
      gamerule keepInventory true
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.deathChest set value 0b
      gamerule keepInventory false
      function 2tw:menu/page
    }
  }

  dir death_coordinates {
    function on {
      data modify storage 2tw:data gamerules.deathCoordinates set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.deathCoordinates set value 0b
      function 2tw:menu/page
    }
  }

  dir disabled_ender_eyes {
    function on {
      data modify storage 2tw:data gamerules.disabledEnderEyes set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.disabledEnderEyes set value 0b
      function 2tw:menu/page
    }
  }

  dir dynamic_light {
    function on {
      data modify storage 2tw:data gamerules.dynamicLight set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.dynamicLight set value 0b
      function 2tw:menu/page
    }
  }

  dir end_above_overworld {
    function on {
      data modify storage 2tw:data gamerules.endAboveOverworld set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.endAboveOverworld set value 0b
      function 2tw:menu/page
    }
  }

  dir fish_traps {
    function on {
      data modify storage 2tw:data gamerules.fishTraps set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.fishTraps set value 0b
      function 2tw:menu/page
    }
  }

  dir glow_berries_glow {
    function on {
      data modify storage 2tw:data gamerules.glowBerriesGlow set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.glowBerriesGlow set value 0b
      function 2tw:menu/page
    }
  }

  dir harder_powder_snow {
    function on {
      data modify storage 2tw:data gamerules.harderPowderSnow set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.harderPowderSnow set value 0b
      function 2tw:menu/page
    }
  }

  dir higher_bell_range {
    function on {
      data modify storage 2tw:data gamerules.higherBellRange set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.higherBellRange set value 0b
      function 2tw:menu/page
    }
  }

  dir invisible_see_invisible {
    function on {
      data modify storage 2tw:data gamerules.invisibleSeeInvisible set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.invisibleSeeInvisible set value 0b
      function 2tw:menu/page
    }
  }

  dir longer_entity_death {
    function on {
      data modify storage 2tw:data gamerules.longerEntityDeath set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.longerEntityDeath set value 0b
      function 2tw:menu/page
    }
  }

  dir nerfed_elytra {
    function on {
      data modify storage 2tw:data gamerules.nerfedElytra set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.nerfedElytra set value 0b
      function 2tw:menu/page
    }
  }

  dir no_thunderstorm_sleep {
    function on {
      data modify storage 2tw:data gamerules.noThunderstormSleep set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.noThunderstormSleep set value 0b
      function 2tw:menu/page
    }
  }

  dir no_to_expensive {
    function on {
      data modify storage 2tw:data gamerules.noToExpensive set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.noToExpensive set value 0b
      function 2tw:menu/page
    }
  }

  dir old_regeneration {
    function on {
      data modify storage 2tw:data gamerules.oldRegeneration set value 1b
      gamerule naturalRegeneration false
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.oldRegeneration set value 0b
      gamerule naturalRegeneration true
      function 2tw:menu/page
    }
  }

  dir only_ruined_portals {
    function on {
      data modify storage 2tw:data gamerules.onlyRuinedPortals set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.onlyRuinedPortals set value 0b
      function 2tw:menu/page
    }
  }

  dir path_generator {
    function on {
      data modify storage 2tw:data gamerules.pathGenerator set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.pathGenerator set value 0b
      function 2tw:menu/page
    }
  }

  dir projectile_block_damage {
    function on {
      data modify storage 2tw:data gamerules.projectileBlockDamage set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.projectileBlockDamage set value 0b
      function 2tw:menu/page
    }
  }

  dir random_respawn {
    function on {
      data modify storage 2tw:data gamerules.randomRespawn set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.randomRespawn set value 0b
      function 2tw:menu/page
    }
  }

  dir realistic_fire {
    function on {
      data modify storage 2tw:data gamerules.realisticFire set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.realisticFire set value 0b
      function 2tw:menu/page
    }
  }

  dir realistic_torches {
    function on {
      data modify storage 2tw:data gamerules.realisticTorches set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.realisticTorches set value 0b
      function 2tw:menu/page
    }
  }

  dir server_time {
    function on {
      data modify storage 2tw:data gamerules.serverTime set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.serverTime set value 0b
      function 2tw:menu/page
    }
  }

  dir spectator_sense {
    function on {
      data modify storage 2tw:data gamerules.spectatorSense set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.spectatorSense set value 0b
      function 2tw:menu/page
    }
  }

  dir speed_paths {
    function on {
      data modify storage 2tw:data gamerules.speedPaths set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.speedPaths set value 0b
      function 2tw:menu/page
    }
  }

  dir spyglass_selection {
    function on {
      data modify storage 2tw:data gamerules.spyglassSelection set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.spyglassSelection set value 0b
      function 2tw:menu/page
    }
  }

  dir squid_ink_blindness {
    function on {
      data modify storage 2tw:data gamerules.squidInkBlindness set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.squidInkBlindness set value 0b
      function 2tw:menu/page
    }
  }

  dir tnt_auto_prime {
    function on {
      data modify storage 2tw:data gamerules.tntAutoPrime set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.tntAutoPrime set value 0b
      function 2tw:menu/page
    }
  }

  dir unlock_all_recipes {
    function on {
      data modify storage 2tw:data gamerules.unlockAllRecipes set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.unlockAllRecipes set value 0b
      function 2tw:menu/page
    }
  }

  dir visible_marker {
    function on {
      data modify storage 2tw:data gamerules.visibleMarker set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.visibleMarker set value 0b
      function 2tw:menu/page
    }
  }

  dir wandering_trader_notifications {
    function on {
      data modify storage 2tw:data gamerules.wanderingTraderNotifications set value 1b
      function 2tw:menu/page
    }
    function off {
      function 2tw:menu/click
      data modify storage 2tw:data gamerules.wanderingTraderNotifications set value 0b
      function 2tw:menu/page
    }
  }
}
