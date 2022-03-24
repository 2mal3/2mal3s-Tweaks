import ../../../macros/log.mcm


# Torch burns out
clock 60s {
  name loop

  execute if data storage 2tw:data gamerules{realisticTorches: 1b} as @e[type=minecraft:marker,tag=2tw.torch] at @s run {
    scoreboard players add @s 2tw.realisticTorchesTime 1
    execute if score @s 2tw.realisticTorchesTime > $maxTime 2tw.realisticTorchesTime align xyz run {
      playsound minecraft:block.fire.extinguish block @a[distance=..8] ~ ~ ~ 0.5 2
      particle minecraft:smoke ~0.5 ~0.3 ~0.5 0 0.2 0 0 10
      setblock ~ ~ ~ minecraft:air
      kill @s
    }
  }
}


# Placing a torch
function place_torch {
  advancement revoke @s only 2tw:tweaks/realistic_torches/place_torch
  log 2TW debug entity <Placed torch>

  execute if data storage 2tw:data gamerules{realisticTorches: 1b} run {
    execute anchored eyes run {
      execute if block ~ ~ ~ #2tw:tweaks/realistic_torches/air positioned ^ ^ ^0.1 run function $block
      execute if block ~ ~ ~ minecraft:torch run summon minecraft:marker ~ ~ ~ {Tags: ["global.ignore", "2tw.torch"]}
    }
  }
}

advancement place_torch {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:placed_block",
      "conditions": {
        "block": "minecraft:torch"
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/realistic_torches/place_torch"
  }
}

blocks air {
  minecraft:air
  minecraft:cave_air
}
