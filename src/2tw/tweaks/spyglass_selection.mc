import ../../../macros/log.mcm


function main {
  advancement revoke @s only 2tw:tweaks/spyglass_selection/use_spyglass_while_sneaking

  tag @s add 2tw.spyglass_selection.player
  execute if data storage 2tw:data gamerules{spyglass_selection: 1b} as @e[team=!thisTeamDoesNotExist,distance=1..,tag=!global.ignore,tag=!global.ignore.gui,tag=!smithed.block] run {
    tag @s add 2tw.spyglass_selection.entity
    execute as @p if predicate 2tw:tweaks/spyglass_selection/looking_at_filter as @e[tag=2tw.spyglass_selection.entity] run effect give @s minecraft:glowing 15 0 true
    tag @s remove 2tw.spyglass_selection.entity
  }
  tag @s remove 2tw.spyglass_selection.player
}

predicate looking_at_filter {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "type_specific": {
      "type": "player",
      "looking_at": {
        "nbt": "{Tags: [\"2tw.spyglass_selection.entity\"]}"
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
