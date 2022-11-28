import ../../../macros/log.mcm


function eat {
  log 2TW debug entity <Eat glow berries>
  advancement revoke @s only 2tw:tweaks/glow_berries_glow/eat

  execute if data storage 2tw:data gamerules{glow_berries_glow: 1b} run effect give @s minecraft:glowing 30 0 false
}

advancement eat {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:glow_berries"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/glow_berries_glow/eat"
  }
}
