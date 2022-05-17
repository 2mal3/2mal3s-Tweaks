import ../../../macros/log.mcm


function loop {
  execute as @e[type=minecraft:marker,tag=2tw.fishTrap] at @s run {
    # Removes marker entities from destroyed fish traps
    execute unless block ~ ~ ~ minecraft:barrel run {
      log 2TW debug entity <Fish Trap destroyed>
      kill @s
    }

    # Fills fish traps slowly with fish
    execute if block ~ ~ ~ minecraft:barrel if block ~1 ~ ~ #2tw:tweaks/fish_traps/water if block ~-1 ~ ~ #2tw:tweaks/fish_traps/water if block ~ ~ ~1 #2tw:tweaks/fish_traps/water if block ~ ~ ~-1 #2tw:tweaks/fish_traps/water if block ~1 ~ ~1 #2tw:tweaks/fish_traps/water if block ~1 ~ ~-1 #2tw:tweaks/fish_traps/water if block ~-1 ~ ~1 #2tw:tweaks/fish_traps/water if block ~-1 ~ ~-1 #2tw:tweaks/fish_traps/water run loot insert ~ ~ ~ loot minecraft:gameplay/fishing/fish
  }
}


# Placing fish traps
function place {
  advancement revoke @s only 2tw:tweaks/fish_traps/place

  execute if predicate 2tw:tweaks/fish_traps/in_water_biome anchored eyes run {
    execute if block ~ ~ ~ #2tw:tweaks/fish_traps/air positioned ^ ^ ^0.1 run function $block
    execute if block ~ ~ ~ minecraft:barrel if block ~1 ~ ~ #2tw:tweaks/fish_traps/water if block ~-1 ~ ~ #2tw:tweaks/fish_traps/water if block ~ ~ ~1 #2tw:tweaks/fish_traps/water if block ~ ~ ~-1 #2tw:tweaks/fish_traps/water if block ~1 ~ ~1 #2tw:tweaks/fish_traps/water if block ~1 ~ ~-1 #2tw:tweaks/fish_traps/water if block ~-1 ~ ~1 #2tw:tweaks/fish_traps/water if block ~-1 ~ ~-1 #2tw:tweaks/fish_traps/water run {
      log 2TW debug entity <Placed Fish Trap>

      data merge block ~ ~ ~ {CustomName:'{"text":"Fish Trap","italic":false}'}
      summon minecraft:marker ~ ~ ~ {Tags:["2tw.fishTrap", "global.ignore", "global.ignore.kill", "smithed.block"]}
    } 
  }
}

blocks air {
  \#2tw:utilities/air
  \#2tw:tweaks/fish_traps/water
}

blocks water {
  minecraft:water
  minecraft:seagrass
  minecraft:kelp
  minecraft:sea_pickle
  minecraft:tall_seagrass
}

advancement place {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:placed_block",
      "conditions": {
        "block": "minecraft:barrel"
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/fish_traps/place"
  }
}

predicate in_water_biome {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:swamp"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:river"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:frozen_river"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:warm_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:lukewarm_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:frozen_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:deep_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:deep_lukewarm_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:deep_frozen_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:deep_cold_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:cold_ocean"
      }
    }
  ]
}
