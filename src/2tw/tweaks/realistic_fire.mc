
function loop_4_tick {
  # Burning entity draw a line of fire behind them
  execute as @e[distance=..42,team=!thisTeamDoesNotExist,predicate=2tw:tweaks/realistic_fire/on_fire,type=!minecraft:arrow,team=!thisTeamDoesNotExist] at @s if entity @p[distance=..42,gamemode=!spectator] unless entity @e[type=minecraft:marker,tag=2tw.fire,distance=..1] run summon minecraft:marker ~ ~ ~ {Tags: ["2tw.fire", "global.ignore"]}

  execute as @e[type=minecraft:marker,tag=2tw.fire] at @s unless entity @e[distance=..1,type=!minecraft:marker] run {
    setblock ~ ~ ~ minecraft:fire
    kill @s
  }
}

function loop_second {
  # Burning arrows place fire
  execute as @e[type=minecraft:arrow,predicate=2tw:tweaks/realistic_fire/on_fire,predicate=2tw:tweaks/realistic_fire/in_ground,tag=!global.ignore] at @s run setblock ~ ~ ~ minecraft:fire

  # Burning creepers ignite
  execute as @e[type=minecraft:creeper,tag=!2tw.realistic_fire.processed,predicate=2tw:tweaks/realistic_fire/on_fire,tag=!global.ignore] run {
    tag @s add 2tw.realistic_fire.processed
    data modify entity @s ignited set value 1
  }
}

predicate on_fire {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_on_fire": true
    }
  }
}

predicate in_ground {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{inGround:1b}"
  }
}
