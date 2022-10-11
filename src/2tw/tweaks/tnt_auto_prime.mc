import ../../../macros/log.mcm


function place_tnt {
  advancement revoke @s only 2tw:tweaks/tnt_auto_prime/place_tnt

  execute if data storage 2tw:data gamerules{tntAutoPrime: 1b} run {
    log 2TW debug entity <Placed TNT>
    execute anchored eyes positioned ^ ^ ^0.1 run {
      execute if block ~ ~ ~ #2tw:utilities/air positioned ^ ^ ^0.1 run function $block
      execute if block ~ ~ ~ minecraft:tnt run {
        setblock ~ ~ ~ minecraft:air
        execute align xyz run summon tnt ~0.5 ~ ~0.5 {Fuse: 80}
      }
    }
  }
}

advancement place_tnt {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:placed_block",
      "conditions": {
        "block": "minecraft:tnt"
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/tnt_auto_prime/place_tnt"
  }
}
