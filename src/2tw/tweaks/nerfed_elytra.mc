import ../../../macros/log.mcm


function loop {
  execute as @a[predicate=2tw:tweaks/nerfed_elytra/mending] run {
    log 2TW debug entity <Removed mending from elytra>

    # Remove Mending from the corresponding slot
    execute if predicate 2tw:tweaks/nerfed_elytra/mainhand run item modify entity @s weapon.mainhand 2tw:tweaks/nerfed_elytra/remove_mending
    execute if predicate 2tw:tweaks/nerfed_elytra/offhand run item modify entity @s weapon.offhand 2tw:tweaks/nerfed_elytra/remove_mending
    execute if predicate 2tw:tweaks/nerfed_elytra/chest run item modify entity @s armor.chest 2tw:tweaks/nerfed_elytra/remove_mending
    # Give some xp in compensation
    xp add @s 30 points
  }
}


predicate mending {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/nerfed_elytra/chest"
    },
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/nerfed_elytra/offhand"
    },
    {
      "condition": "minecraft:reference",
      "name": "2tw:tweaks/nerfed_elytra/mainhand"
    }
  ]
}

predicate mainhand {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "mainhand": {
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

predicate offhand {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "offhand": {
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

predicate chest {
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
