import ../../../macros/log.mcm


function loop {
  execute as @a[scores={2tw.damage=1..},predicate=!2tw:tweaks/damage_infection/have_poison] if predicate 2tw:tweaks/damage_infection/random at @s run {
    log 2TW debug entity <Infected>

    playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..8] ~ ~ ~
    effect give @s minecraft:blindness 5 0 true
    effect give @s minecraft:poison 30 0 false
    effect give @s minecraft:nausea 30 0 false
    effect give @s minecraft:slowness 120 1 false
    effect give @s minecraft:weakness 120 1 false
  }
}

predicate random {
  "condition": "minecraft:random_chance",
  "chance": 0.01
}

predicate have_poison {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "effects": {
      "minecraft:poison": {}
    }
  }
}

