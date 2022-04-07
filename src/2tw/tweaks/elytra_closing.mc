import ../../../macros/log.mcm
import ../../../macros/wait.mcm


function loop {
  execute as @a[scores={2tw.useElytra=1..,2tw.sneaking=1..},predicate=2tw:tweaks/elytra_closing/have_elytra] run {
    log 2TW debug entity <Closed Elytra>

    # Store the current durability of the elytra
    item modify entity @s armor.chest 2tw:tweaks/elytra_closing/store
    # Set the durability so low that the elytra breaks
    item modify entity @s armor.chest 2tw:tweaks/elytra_closing/close
    
    title @s actionbar [{"text":"Press ","color":"white"},{"keybind":"key.jump","color":"white"},{"text":" to reopen elytra","color":"white"}]

    wait as @a in 2tw.schedule for 2t {
      # Reset the durability from the store value
      item modify entity @s armor.chest 2tw:tweaks/elytra_closing/open
    }
  }
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
