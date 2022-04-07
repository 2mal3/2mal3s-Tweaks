import ../../../macros/log.mcm


function loop {
  execute as @a[predicate=2tw:tweaks/nerfed_elytra/mending] run {
    log 2TW debug entity <Removed mending from elytra>
    item modify entity @s armor.chest 2tw:tweaks/nerfed_elytra/remove_mending
    # Give some xp in compensation
    xp add @s 30 points
  }
}


predicate mending {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "chest": {
          "items": [
            "minecraft:elytra"
        ],
        "enchantments": [
          {
              "enchantment": "minecraft:mending"
          }
        ]
      }
    }
  }
}

modifier remove_mending {
  "function": "minecraft:set_enchantments",
  "enchantments": {
    "minecraft:mending": 0
  }
}

