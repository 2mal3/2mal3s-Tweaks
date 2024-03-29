import ../../../macros/log.mcm


function repair {
  advancement revoke @s only 2tw:tweaks/no_to_expensive/used_item_on_anvil

  execute if data storage 2tw:data gamerules{no_to_expensive: 1b} run {
    scoreboard players set .temp_0 2tw.data 0
    execute store result score .temp_0 2tw.data run data get entity @s SelectedItem.tag.RepairCost
    execute if score .temp_0 2tw.data matches 10.. run {
      log 2TW debug entity <Reset repair cost>
      item modify entity @s weapon.mainhand 2tw:tweaks/no_to_expensive/reset_repair_cost
      playsound minecraft:block.anvil.use block @a ~ ~ ~ 8 1
      # Damages the anvil with a 12% chance
      execute if predicate 2tw:utilities/random/12 anchored eyes run {
        execute if block ~ ~ ~ #2tw:utilities/air positioned ^ ^ ^0.1 run function $block
        execute if block ~ ~ ~ #minecraft:anvil run {
          execute if block ~ ~ ~ minecraft:damaged_anvil run setblock ~ ~ ~ minecraft:air
          execute if block ~ ~ ~ minecraft:chipped_anvil run setblock ~ ~ ~ minecraft:damaged_anvil
          execute if block ~ ~ ~ minecraft:anvil run setblock ~ ~ ~ minecraft:chipped_anvil
          playsound minecraft:block.anvil.destroy block @a ~ ~ ~ 8 1
        }
      }
    }
  }
}

modifier reset_repair_cost {
  "function": "minecraft:set_nbt",
  "tag": "{RepairCost:10}"
}

advancement used_item_on_anvil {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:item_used_on_block",
      "conditions": {
        "location": {
          "block": {
            "tag": "minecraft:anvil"
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/no_to_expensive/repair"
  }
}
