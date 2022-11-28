import ../../../macros/log.mcm


function place {
  log 2TW debug entity <Add arms>
  advancement revoke @s only 2tw:tweaks/armor_stand_arms/place

  execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=!2tw.armor_stand_arms.processed,tag=!global.ignore,tag=!smithed.entity,tag=!smithed.strict,tag=!smithed.block] run {
    tag @s add 2tw.armor_stand_arms.processed
    execute if data storage 2tw:data gamerules{armor_stand_arms: 1b} run data merge entity @s {ShowArms: 1b}
  }
}

advancement place {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:item_used_on_block",
      "conditions": {
        "item": {
          "items": [
            "minecraft:armor_stand"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/armor_stand_arms/place"
  }
}
