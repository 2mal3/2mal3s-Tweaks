import ../../../macros/log.mcm
import ../../../macros/wait.mcm


clock 1t {
  name loop

  execute if data storage 2tw:data gamerules{elytraClosing: 1b} as @a[scores={2tw.useElytra=1..,2tw.sneaking=1..},predicate=2tw:tweaks/elytra_closing/have_elytra] run {
    log 2TW debug entity <Closed Elytra>

    item modify entity @s armor.chest 2tw:tweaks/elytra_closing/store
    item modify entity @s armor.chest 2tw:tweaks/elytra_closing/close
    
    title @s actionbar [{"text":"Press ","color":"white"},{"keybind":"key.jump","color":"white"},{"text":" to reopen elytra","color":"white"}]

    wait as @a in 2tw.schedule for 2t {
      item modify entity @s armor.chest 2tw:tweaks/elytra_closing/open
    }
  }

  scoreboard players reset @a[scores={2tw.useElytra=1..}] 2tw.useElytra
  scoreboard players reset @a[scores={2tw.sneaking=1..}] 2tw.sneaking
}

modifier store {
  "function": "copy_nbt",
  "source": "this",
  "ops": [
    {
      "source": "Inventory[{Slot:102b}].tag.Damage",
      "target": "2tw.damage",
      "op": "replace"
    }
  ]
}

modifier close {
  "function": "minecraft:set_damage",
  "damage": 0.001
}

modifier open {
  "function": "copy_nbt",
  "source": "this",
  "ops": [
    {
      "source": "Inventory[{Slot:102b}].tag.2tw.damage",
      "target": "Damage",
      "op": "replace"
    }
  ]
}

predicate have_elytra {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "chest": {
        "items": [
          "minecraft:elytra"
        ]
      }
    }
  }
}
