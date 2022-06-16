import ../../../macros/log.mcm


function ring {
  execute if data storage 2tw:data gamerules{higherBellRange: 1b} run {
      log 2TW debug entity <Ring bell>
      advancement revoke @s only 2tw:tweaks/higher_bell_range/ring
      effect give @e[type=#minecraft:raiders,distance=32..64] minecraft:glowing 5 0 false
  }
}

advancement ring {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:item_used_on_block",
      "conditions": {
        "location": {
          "block": {
            "blocks": [
              "minecraft:bell"
            ]
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/higher_bell_range/ring"
  }
}
