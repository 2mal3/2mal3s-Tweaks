
## Placing of the ladder
function place {
  advancement revoke @s only 2tw:tweaks/rope_ladder/place

  execute if data storage 2tw:data gamerules{ropeLadder: 1b} anchored eyes run {
    # Finds the placed ladder
    execute unless block ~ ~ ~ minecraft:ladder if block ~ ~ ~ #2tw:utilities/air positioned ^ ^ ^0.1 run function $block
    execute if block ~ ~ ~ minecraft:ladder positioned ~ ~-1 ~ run function 2tw:tweaks/rope_ladder/set_blocks
  }
}

# Place the rope ladder
function set_blocks {
  execute if block ~ ~ ~ #2tw:utilities/air run {
    # Checks if the player have still ladders in the inventory and than clears one
    scoreboard players set .temp0 2tw.data 0
    execute store success score .temp0 2tw.data run clear @s minecraft:ladder 1

    execute if score .temp0 2tw.data matches 1 run {
      clone ~ ~1 ~ ~ ~1 ~ ~ ~ ~
      execute positioned ~ ~-1 ~ run function 2tw:tweaks/rope_ladder/set_blocks
    }
  }
}

advancement place {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:placed_block",
      "conditions": {
        "player": {
          "flags": {
            "is_sneaking": true
          }
        },
        "block": "minecraft:ladder"
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/rope_ladder/place"
  }
}


## Breaking the ladder
function loop {
  execute as @a[scores={2tw.minedLadder=1..,2tw.sneaking=1..}] at @s at @e[type=minecraft:item, nbt={Item: {id: "minecraft:ladder", Count: 1b}, Age: 0s}, limit=1, sort=nearest] run {
    kill @e[type=item,nbt={Item: {id: "minecraft:ladder", Count: 1b}, Age: 0s},limit=1,sort=nearest]

    execute at @s run summon minecraft:item ~ ~ ~ {PickupDelay: 0, Item: {id: "minecraft:ladder", Count: 1b}}
    execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:ladder run function 2tw:tweaks/rope_ladder/break
  }

  scoreboard players reset @a[scores={2tw.minedLadder=1..}] 2tw.minedLadder
}

function break {
  setblock ~ ~ ~ minecraft:air
  execute at @s run summon minecraft:item ~ ~ ~ {PickupDelay: 0, Item: {id: "minecraft:ladder", Count: 1b}}

  execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:ladder run function 2tw:tweaks/rope_ladder/break
}
