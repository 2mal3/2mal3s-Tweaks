import ../../../macros/log.mcm


clock 1s {
  name loop

  execute if data storage 2tw:data gamerules{betterEndCrystals: 1b} as @e[type=minecraft:ender_dragon,tag=!2tw.betterEndCrystals.processed] run {
      log 2TW debug entity <Protected end crystals>
    tag @s add 2tw.betterEndCrystals.processed

    execute as @e[type=minecraft:end_crystal,predicate=2tw:tweaks/better_end_crystals/in_end,predicate=2tw:tweaks/better_end_crystals/original] at @s if block ~2 ~ ~ minecraft:iron_bars run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:obsidian
  }
}
  

predicate in_end {
  "condition": "minecraft:location_check",
  "predicate": {
    "dimension": "minecraft:the_end"
  }
}

predicate original {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{ShowBottom:1b}"
  }
}

