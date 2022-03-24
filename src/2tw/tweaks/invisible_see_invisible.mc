import ../../../macros/log.mcm


function get_invisibility {
  #advancement revoke @s only 2tw:tweaks/invisible_see_invisible/get_invisibility
  execute if data storage 2tw:data gamerules{invisibleSeeInvisible: 1b} run {
    log 2TW debug entity <Get invisibility>
    team join 2tw.invisible @s
  }
}

function lose_invisibility {
  log 2TW debug entity <Lose invisibility>
  advancement revoke @s only 2tw:tweaks/invisible_see_invisible/get_invisibility
  advancement revoke @s only 2tw:tweaks/invisible_see_invisible/lose_invisibility

  team leave @s
}

advancement get_invisibility {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:effects_changed",
      "conditions": {
        "player": {
          "player": {
            "advancements": {
              "2tw:tweaks/invisible_see_invisible/get_invisibility": false
            }
          }
        },
        "effects": {
          "minecraft:invisibility": {
            "duration": {
              "min": 41
            }
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/invisible_see_invisible/get_invisibility"
  }
}

advancement lose_invisibility {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:tick",
      "conditions": {
        "player": {
          "effects": {
            "minecraft:invisibility": {
              "duration": 1
            }
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/invisible_see_invisible/lose_invisibility"
  }
}
