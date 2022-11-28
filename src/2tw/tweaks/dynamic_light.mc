
function loop {
  # Place light
  execute as @a[gamemode=!spectator,tag=!global.ignore] at @s if predicate 2tw:tweaks/dynamic_light/holding_light_emitting_item positioned ~ ~1 ~ run {
    execute if block ~ ~ ~ #2tw:tweaks/dynamic_light/light_replaceable run {
      summon minecraft:marker ~ ~ ~ {Tags: ["2tw.dynamic_light", "global.ignore"]}
      execute unless block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:light[level=15,waterlogged=false]
      execute if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:light[level=15,waterlogged=true]
    }
  }

  # Remove light
  execute as @e[type=minecraft:marker,tag=2tw.dynamic_light] at @s unless entity @p[distance=..1,predicate=2tw:tweaks/dynamic_light/holding_light_emitting_item] run {
    execute if block ~ ~ ~ minecraft:light[waterlogged=false] run setblock ~ ~ ~ minecraft:air
    execute if block ~ ~ ~ minecraft:light[waterlogged=true] run setblock ~ ~ ~ minecraft:water
    kill @s
  }
}

blocks light_replaceable {
  minecraft:air
  minecraft:cave_air
  minecraft:water
}

items light_emitting {
  minecraft:glowstone
  minecraft:beacon
  minecraft:sea_lantern
  minecraft:jack_o_lantern
  minecraft:torch
  minecraft:campfire
  minecraft:lantern
  minecraft:lava_bucket
}

predicate holding_light_emitting_item {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:entity_properties",
      "entity": "this",
      "predicate": {
        "equipment": {
          "offhand": {
            "tag": "2tw:tweaks/dynamic_light/light_emitting"
          }
        }
      }
    },
    {
      "condition": "minecraft:entity_properties",
      "entity": "this",
      "predicate": {
        "equipment": {
          "mainhand": {
            "tag": "2tw:tweaks/dynamic_light/light_emitting"
          }
        }
      }
    }
  ]
}
