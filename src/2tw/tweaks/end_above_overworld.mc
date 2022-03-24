import ../../../macros/log.mcm


dir overworld {
  function sky {
    advancement revoke @s only 2tw:tweaks/end_above_overworld/overworld/sky

    execute if data storage 2tw:data gamerules{endAboveOverworld: 1b} run {
      # Tp the player in the end
      execute in minecraft:the_end positioned ~ -16 ~ run tp @s ~ ~ ~

      # Give some transit effects
      effect give @s minecraft:nausea 10 0 true
      effect give @s minecraft:blindness 5 0 true
    }
  }

  advancement sky {
    "criteria": {
      "requirement": {
        "trigger": "minecraft:location",
        "conditions": {
          "location": {
            "position": {
              "y": {
                "min": 1064
              }
            },
            "dimension": "minecraft:overworld"
          }
        }
      }
    },
    "rewards": {
      "function": "2tw:tweaks/end_above_overworld/overworld/sky"
    }
  }
}


dir end {
  function void {
    advancement revoke @s only 2tw:tweaks/end_above_overworld/end/void

    execute if data storage 2tw:data gamerules{endAboveOverworld: 1b} run {
      # Tp the player in the overworld
      execute in minecraft:overworld positioned ~ 1016 ~ run tp @s ~ ~ ~

      # Give some transit effects
      effect give @s minecraft:nausea 10 0 true
      effect give @s minecraft:blindness 5 0 true
    }
  }

  advancement void {
    "criteria": {
      "requirement": {
        "trigger": "minecraft:location",
        "conditions": {
          "location": {
            "position": {
              "y": {
                "max": -64
              }
            },
            "dimension": "minecraft:the_end"
          }
        }
      }
    },
    "rewards": {
      "function": "2tw:tweaks/end_above_overworld/end/void"
    }
  }
}
