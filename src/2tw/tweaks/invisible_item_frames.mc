import ../../../macros/log.mcm
import ../../../macros/wait.mcm


## Test after 3 minute if the item frame is used to prevent spamming
function place {
  advancement revoke @s only 2tw:tweaks/invisible_item_frames/place
  log 2TW debug entity <Placed Invisible Item Frame>

  execute as @e[type=minecraft:item_frame,sort=nearest,nbt={Invisible: 1b},tag=!2tw.invisible_item_frames.processed] run {
    tag @s add 2tw.invisible_item_frames.processed

    tag @s add 2tw.invisible_item_frames.test
    wait as @e[type=minecraft:item_frame,tag=!2tw.2tw.invisible_item_frames.test] in 2tw.schedule for 180s {
      execute unless data entity @s Item run {
        log 2TW debug entity <Removed because no Item>

        loot spawn ~ ~ ~ loot 2tw:tweaks/invisible_item_frames/invisible_item_frame
        kill @s
      }
    }
  }
}

advancement place {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:item_used_on_block",
      "conditions": {
        "item": {
          "nbt": "{2tw:{invisibleItemFrame: 1b}}"
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/invisible_item_frames/place"
  }
}


## The crafting of the invisible item frame
function craft {
  advancement revoke @s only 2tw:tweaks/invisible_item_frames/craft
  recipe take @s 2tw:tweaks/invisible_item_frames/invisible_item_frame

  # Give new item
  clear @s minecraft:knowledge_book
  execute if data storage 2tw:data gamerules{invisible_item_frames: 1b} run loot give @s loot 2tw:tweaks/invisible_item_frames/invisible_item_frame

  # Stop pickup sound
  stopsound @s * minecraft:entity.item.pickup
}

loot invisible_item_frame {
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:item",
          "name": "minecraft:item_frame",
          "functions": [
            {
              "function": "minecraft:set_name",
              "name": "§r§7Invisible Item Frame"
            },
            {
              "function": "minecraft:set_nbt",
              "tag": "{2tw:{invisibleItemFrame: 1b},Enchantments:[{}],EntityTag:{Invisible:1b}}"
            }
          ]
        }
      ]
    }
  ]
}

advancement craft {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:recipe_unlocked",
      "conditions": {
        "recipe": "2tw:tweaks/invisible_item_frames/invisible_item_frame"
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/invisible_item_frames/craft"
  }
}


recipe invisible_item_frame {
  "type": "minecraft:crafting_shaped",
  "pattern": [
      "###",
      "#I#",
      "###"
  ],
  "key": {
      "#": {
          "item": "minecraft:glass_pane"
      },
      "I": {
          "item": "minecraft:item_frame"
      }
  },
  "result": {
      "item": "minecraft:knowledge_book",
      "count": 1
  }
}
