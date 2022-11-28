import ../../../macros/log.mcm


advancement hit_with_sonic_boom {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "source_entity": {
            "type": "minecraft:warden"
          },
          "type": {
            "bypasses_armor": true
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/warden_tinnitus/hit_with_sonic_boom"
  }
}

function hit_with_sonic_boom {
  advancement revoke @s only 2tw:tweaks/warden_tinnitus/hit_with_sonic_boom
  log 2TW debug entity <Warden Tinnitus>

  execute if data storage 2tw:data gamerules{warden_tinnitus: 1b} run scoreboard players set @s 2tw.tinnitus_time 30
}

dir clock {
  function tick_ {
    execute as @a[scores={2tw.tinnitus_time=1..}] run {
      stopsound @s ambient
      stopsound @s block
      stopsound @s hostile
      stopsound @s master
      stopsound @s music
      stopsound @s neutral
      stopsound @s player
      stopsound @s record
      stopsound @s voice
      stopsound @s weather
    }
  }

  function second {
    scoreboard players remove @a[scores={2tw.tinnitus_time=1..}] 2tw.tinnitus_time 1
  }
}
