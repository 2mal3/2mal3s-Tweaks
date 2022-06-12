import ../../../macros/log.mcm


function place {
  log 2TW debug entity <Add arms>
  advancement revoke @s only 2tw:tweaks/armor_stand_arms/place

  execute as @e[type=minecraft:armor_stand,tag=!global.ignore,sort=nearest,limit=1,tag=!2tw.armorStandArms.processed] run {
    tag @s add 2tw.armorStandArms.processed
    execute if data storage 2tw:data gamerules{armorStandArms:1b} run data merge entity @s {ShowArms: 1b}
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
