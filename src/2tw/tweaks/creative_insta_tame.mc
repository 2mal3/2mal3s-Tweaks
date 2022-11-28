
function started_riding {
  advancement revoke @s only 2tw:tweaks/creative_insta_tame/started_riding

  execute if data storage 2tw:data gamerules{creative_insta_tame: 1b} run data merge entity @e[predicate=2tw:tweaks/creative_insta_tame/pet,limit=1,sort=nearest,tag=!global.ignore,tag=!smithed.entity] {Temper: 100}
}

advancement started_riding {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:started_riding",
      "conditions": {
        "player": {
          "player": {
            "gamemode": "creative"
          },
          "vehicle": {
            "nbt": "{Tame:0b}"
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/creative_insta_tame/started_riding"
  }
}

predicate pet {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "passenger": {
      "type": "minecraft:player"
    }
  }
}
