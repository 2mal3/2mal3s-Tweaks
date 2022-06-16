import ../../../macros/log.mcm


function main {
  advancement revoke @s only 2tw:tweaks/spyglass_selection/use_spyglass_while_sneaking

  tag @s add 2tw.spyglassSelection.player
  execute if data storage 2tw:data gamerules{spyglassSelection: 1b} as @e[team=!thisTeamDoesNotExist,distance=1..] run {
    tag @s add 2tw.spyglassSelection.entity
    execute as @p if predicate 2tw:tweaks/spyglass_selection/looking_at_filter as @e[tag=2tw.spyglassSelection.entity] run effect give @s minecraft:glowing 15 0 true
    tag @s remove 2tw.spyglassSelection.entity
  }
  tag @s remove 2tw.spyglassSelection.player
}

predicate looking_at_filter {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "type_specific": {
      "type": "player",
      "looking_at": {
        "nbt": "{Tags: [\"2tw.spyglassSelection.entity\"]}"
      }
    }
  }
}

advancement use_spyglass_while_sneaking {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:using_item",
      "conditions": {
        "player": {
          "flags": {
            "is_sneaking": true
          }
        },
        "item": {
          "items": [
            "minecraft:spyglass"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/spyglass_selection/main"
  }
}
