import ../../../macros/log.mcm


# Torch burns out
function loop {
  execute as @e[type=minecraft:marker,tag=2tw.torch] at @s run {
    scoreboard players add @s 2tw.realistic_torches_time 1
    execute if score @s 2tw.realistic_torches_time > $maxTime 2tw.realistic_torches_time align xyz run {
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

  execute if data storage 2tw:data gamerules{realistic_torches: 1b} run {
    execute anchored eyes run {
      execute if block ~ ~ ~ #2tw:utilities/air positioned ^ ^ ^0.1 run function $block
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
