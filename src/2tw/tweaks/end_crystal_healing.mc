
function loop {
  execute as @e[type=minecraft:end_crystal] at @s as @p[distance=..45,predicate=2tw:tweaks/end_crystal_healing/equipped_dragon_head] at @s run {
    effect give @s minecraft:regeneration 2 2 true
    particle minecraft:dragon_breath ~ ~1.1 ~ 0.2 0.5 0.2 0.01 4
  }
}

predicate equipped_dragon_head {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "head": {
        "items": [
          "minecraft:dragon_head"
        ]
      }
    }
  }
}
