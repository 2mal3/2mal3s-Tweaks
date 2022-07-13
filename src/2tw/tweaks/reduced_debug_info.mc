
function loop {
  # Items witch show the light level when held
  execute as @a[predicate=2tw:tweaks/reduced_debug_info/light] at @s run {
    LOOP(16, i) {
      execute if predicate 2tw:tweaks/reduced_debug_info/light_level/<%i%> run scoreboard players set .temp0 2tw.data <%i%>
    }

    title @s actionbar {"score":{"name":".temp0","objective":"2tw.data"}, "color": "gold", "bold": true}
  }

  # Items witch show the time when held
  execute as @a[predicate=2tw:tweaks/reduced_debug_info/time] run {
    execute store result score .temp0 2tw.data run time query day
    execute store result score .temp1 2tw.data run time query daytime

    # Calculate the current daytime
    # hour
    scoreboard players operation .temp2 2tw.data = .temp1 2tw.data
    scoreboard players operation .temp2 2tw.data /= $1000 2tw.data
    scoreboard players add .temp2 2tw.data 6
    execute if score .temp2 2tw.data matches 24.. run scoreboard players remove .temp2 2tw.data 24
    # minute
    scoreboard players operation .temp3 2tw.data = .temp1 2tw.data
    scoreboard players operation .temp3 2tw.data %= $1000 2tw.data
    scoreboard players operation .temp3 2tw.data *= $3 2tw.data
    scoreboard players operation .temp3 2tw.data /= $50 2tw.data

    title @s actionbar [{"score":{"name":".temp0","objective":"2tw.data"}, "color":"gold", "bold": true},{"text": " "},{"score":{"name":".temp2","objective":"2tw.data"},"color":"white", "bold": false},{"text": ":", "color": "white", "bold": false},{"score":{"name":".temp3","objective":"2tw.data"}, "color":"white", "bold": false}]
  }

  # Items witch show the coordinates when held
  execute as @a[predicate=2tw:tweaks/reduced_debug_info/coordinates] run {
    execute store result score .temp0 2tw.data run data get entity @s Pos[0]
    execute store result score .temp1 2tw.data run data get entity @s Pos[1]
    execute store result score .temp2 2tw.data run data get entity @s Pos[2]
    execute store result score .temp3 2tw.data run data get entity @s Rotation[0]

    # south
    execute if score .temp3 2tw.data matches -44..45 run {
      title @s actionbar [{"text":"S ","color":"gold", "bold": true},{"score":{"name":".temp0","objective":"2tw.data"},"color":"white", "bold": false},{"text": " "},{"score":{"name":".temp1","objective":"2tw.data"},"color":"white", "bold": false},{"text": " "},{"score":{"name":".temp2","objective":"2tw.data"},"color":"white", "bold": false}]
    }
    # west
    execute if score .temp3 2tw.data matches 46..135 run {
      title @s actionbar [{"text":"W ","color":"gold", "bold": true},{"score":{"name":".temp0","objective":"2tw.data"},"color":"white", "bold": false},{"text": " "},{"score":{"name":".temp1","objective":"2tw.data"},"color":"white", "bold": false},{"text": " "},{"score":{"name":".temp2","objective":"2tw.data"},"color":"white", "bold": false}]
    }
    # north
    execute unless score .temp3 2tw.data matches -44..45 unless score .temp3 2tw.data matches 46..135 unless score .temp3 2tw.data matches -135..-45 run {
      title @s actionbar [{"text":"N ","color":"gold", "bold": true},{"score":{"name":".temp0","objective":"2tw.data"},"color":"white", "bold": false},{"text": " "},{"score":{"name":".temp1","objective":"2tw.data"},"color":"white", "bold": false},{"text": " "},{"score":{"name":".temp2","objective":"2tw.data"},"color":"white", "bold": false}]
    }
    # east
    execute if score .temp3 2tw.data matches -135..-45 run {
      title @s actionbar [{"text":"E ","color":"gold", "bold": true},{"score":{"name":".temp0","objective":"2tw.data"},"color":"white", "bold": false},{"text": " "},{"score":{"name":".temp1","objective":"2tw.data"},"color":"white", "bold": false},{"text": " "},{"score":{"name":".temp2","objective":"2tw.data"},"color":"white", "bold": false}]
    }
  }
}


# Items witch show the light level when held
items light {
  minecraft:amethyst_shard
  minecraft:lantern
  minecraft:soul_lantern
}

predicate light {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:entity_properties",
      "entity": "this",
      "predicate": {
        "equipment": {
          "offhand": {
            "tag": "2tw:tweaks/reduced_debug_info/light"
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
            "tag": "2tw:tweaks/reduced_debug_info/light"
          }
        }
      }
    }
  ]
}

dir light_level {
  LOOP(16, i) {
    predicate <%i%> {
      "condition": "minecraft:location_check",
      "predicate": {
        "light": {
          "light": <%i%>
        }
      }
    }
  }
}


# Items witch show the coordinates when held
items coordinates {
  minecraft:compass
  minecraft:recovery_compass
  minecraft:filled_map
}

predicate coordinates {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:entity_properties",
      "entity": "this",
      "predicate": {
        "equipment": {
          "offhand": {
            "tag": "2tw:tweaks/reduced_debug_info/coordinates"
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
            "tag": "2tw:tweaks/reduced_debug_info/coordinates"
          }
        }
      }
    }
  ]
}


# Items witch show the time when held
items time {
  minecraft:clock
}

predicate time {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:entity_properties",
      "entity": "this",
      "predicate": {
        "equipment": {
          "offhand": {
            "tag": "2tw:tweaks/reduced_debug_info/time"
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
            "tag": "2tw:tweaks/reduced_debug_info/time"
          }
        }
      }
    }
  ]
}
