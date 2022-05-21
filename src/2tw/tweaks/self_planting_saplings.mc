
function loop {
  execute as @e[type=minecraft:item,predicate=2tw:tweaks/self_planting_saplings/is_sapling,tag=!2tw.selfPlantingSaplings.processed] at @s unless block ~ ~-1 ~ #2tw:utilities/air run {
    tag @s add 2tw.selfPlantingSaplings.processed

    execute if block ~ ~ ~ #2tw:utilities/air if block ~ ~-1 ~ #minecraft:dirt if predicate 2tw:utilities/random/80 at @s run {
      kill @s

      # Place new sapling
      execute if predicate 2tw:tweaks/self_planting_saplings/is_oak_sapling run setblock ~ ~ ~ minecraft:oak_sapling
      execute if predicate 2tw:tweaks/self_planting_saplings/is_birch_sapling run setblock ~ ~ ~ minecraft:birch_sapling
      execute if predicate 2tw:tweaks/self_planting_saplings/is_acacia_sapling run setblock ~ ~ ~ minecraft:acacia_sapling
      execute if predicate 2tw:tweaks/self_planting_saplings/is_jungle_sapling run setblock ~ ~ ~ minecraft:jungle_sapling
      execute if predicate 2tw:tweaks/self_planting_saplings/is_spruce_sapling run setblock ~ ~ ~ minecraft:spruce_sapling
      execute if predicate 2tw:tweaks/self_planting_saplings/is_dark_oak_sapling run setblock ~ ~ ~ minecraft:dark_oak_sapling

      # Some fancy effects
      execute align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:happy_villager ~ ~0.25 ~ 0.25 0.25 0.25 1 15
      playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5
    }
  }
}


predicate is_sapling {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/self_planting_saplings/is_oak_sapling"
    },
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/self_planting_saplings/is_birch_sapling"
    },
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/self_planting_saplings/is_acacia_sapling"
    },
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/self_planting_saplings/is_jungle_sapling"
    },
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/self_planting_saplings/is_spruce_sapling"
    },
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/self_planting_saplings/is_oak_sapling"
    },
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/self_planting_saplings/is_dark_oak_sapling"
    }
  ]
}

predicate is_oak_sapling {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{Item:{id:\"minecraft:oak_sapling\"}}"
  }
}

predicate is_birch_sapling {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{Item:{id:\"minecraft:birch_sapling\"}}"
  }
}

predicate is_acacia_sapling {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{Item:{id:\"minecraft:acacia_sapling\"}}"
  }
}

predicate is_jungle_sapling {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{Item:{id:\"minecraft:jungle_sapling\"}}"
  }
}

predicate is_spruce_sapling {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{Item:{id:\"minecraft:spruce_sapling\"}}"
  }
}

predicate is_dark_oak_sapling {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{Item:{id:\"minecraft:dark_oak_sapling\"}}"
  }
}
