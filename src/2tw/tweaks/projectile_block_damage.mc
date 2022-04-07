
function loop {
  execute as @e[type=#2tw:tweaks/projectile_block_damage/do_block_damage,predicate=2tw:tweaks/projectile_block_damage/in_ground] at @s if block ~ ~ ~ #2tw:tweaks/projectile_block_damage/glass_panes run setblock ~ ~ ~ minecraft:air destroy
}

entities do_block_damage {
  \#minecraft:arrows
  minecraft:trident
}

predicate in_ground {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{inGround:1b}"
  }
}

blocks glass_panes {
  minecraft:glass_pane
  minecraft:white_stained_glass_pane
  minecraft:orange_stained_glass_pane
  minecraft:magenta_stained_glass_pane
  minecraft:yellow_stained_glass_pane
  minecraft:light_blue_stained_glass_pane
  minecraft:lime_stained_glass_pane
  minecraft:pink_stained_glass_pane
  minecraft:gray_stained_glass_pane
  minecraft:light_gray_stained_glass_pane
  minecraft:cyan_stained_glass_pane
  minecraft:purple_stained_glass_pane
  minecraft:blue_stained_glass_pane
  minecraft:brown_stained_glass_pane
  minecraft:green_stained_glass_pane
  minecraft:red_stained_glass_pane
  minecraft:black_stained_glass_pane
}
