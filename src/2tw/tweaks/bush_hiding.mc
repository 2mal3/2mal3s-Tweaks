import ../../../macros/log.mcm


function loop {
  execute as @a at @s run {
      execute if entity @s[predicate=2tw:tweaks/bush_hiding/is_sneaking] if block ~ ~ ~ #2tw:tweaks/bush_hiding/tall_plants run {
        effect give @s minecraft:invisibility 1 0 true
        tag @s add 2tw.bushHiding.hiding
    }

    # Takes away the player's invisibility when he is no longer in a bush or no longer sneaking
    execute if entity @s[tag=2tw.bushHiding.hiding] run {
      execute unless block ~ ~ ~ #2tw:tweaks/bush_hiding/tall_plants run {
        effect clear @s minecraft:invisibility
        tag @s remove 2tw.bush_hiding.hiding
      }
      execute unless predicate 2tw:tweaks/bush_hiding/is_sneaking run {
        effect clear @s minecraft:invisibility
        tag @s remove 2tw.bush_hiding.hiding
      }
    }
  }
}


predicate is_sneaking {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_sneaking": true
    }
  }
}

blocks tall_plants {
  minecraft:tall_grass
  minecraft:large_fern
  minecraft:lilac
  minecraft:peony
  minecraft:rose_bush
  minecraft:tall_seagrass
}


