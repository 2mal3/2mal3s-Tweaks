
function clock {
  execute as @a[gamemode=!spectator] at @s run {

    execute if predicate 2tw:tweaks/auto_harvest/wheat_seeds if block ~ ~0.5 ~ minecraft:wheat[age=7] run {
      function 2tw:tweaks/auto_harvest/break

      setblock ~ ~0.5 ~ minecraft:wheat[age=0]
      clear @s minecraft:wheat_seeds 1
    }

    execute if predicate 2tw:tweaks/auto_harvest/carrot if block ~ ~0.5 ~ minecraft:carrots[age=7] run {
      function 2tw:tweaks/auto_harvest/break

      setblock ~ ~0.5 ~ minecraft:carrots[age=0]
      clear @s minecraft:carrot 1
    }

    execute if predicate 2tw:tweaks/auto_harvest/potato if block ~ ~0.5 ~ minecraft:potatoes[age=7] run {
      function 2tw:tweaks/auto_harvest/break

      setblock ~ ~0.5 ~ minecraft:potatoes[age=0]
      clear @s minecraft:potato 1
    }

    execute if predicate 2tw:tweaks/auto_harvest/beetroot_seeds if block ~ ~0.5 ~ minecraft:beetroots[age=3] run {
      function 2tw:tweaks/auto_harvest/break

      setblock ~ ~0.5 ~ minecraft:beetroots[age=0]
      clear @s minecraft:beetroot_seeds 1
    }

    execute if predicate 2tw:tweaks/auto_harvest/sugar_cane if block ~ ~1 ~ minecraft:sugar_cane if block ~ ~2 ~ minecraft:sugar_cane run {
      playsound minecraft:block.crop.break block @a ~ ~ ~
      give @s minecraft:sugar_cane 2
      fill ~ ~1 ~ ~ ~2 ~ minecraft:air
    }
  }
}

function break {
  loot give @s mine ~ ~0.5 ~
  playsound minecraft:block.crop.break block @a ~ ~ ~
}


predicate wheat_seeds {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "offhand": {
        "items": [
          "minecraft:wheat_seeds"
        ]
      }
    }
  }
}

predicate beetroot_seeds {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "offhand": {
        "items": [
          "minecraft:beetroot_seeds"
        ]
      }
    }
  }
}

predicate carrot {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "offhand": {
        "items": [
          "minecraft:carrot"
        ]
      }
    }
  }
}

predicate potato {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "offhand": {
        "items": [
          "minecraft:potato"
        ]
      }
    }
  }
}

predicate sugar_cane {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "equipment": {
      "offhand": {
        "items": [
          "minecraft:sugar_cane"
        ]
      }
    }
  }
}
