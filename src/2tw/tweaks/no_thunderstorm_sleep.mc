
function sleep_while_thunder {
  advancement revoke @s only 2tw:tweaks/no_thunderstorm_sleep/sleep_while_thunder

  execute if data storage 2tw:data gamerules{noThunderstormSleep: 1b} run {
    tp @s ~ ~ ~
  }
}

advancement sleep_while_thunder {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:slept_in_bed",
      "conditions": {
        "player": [
          {
            "condition": "minecraft:weather_check",
            "thundering": true
          }
        ]
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/no_thunderstorm_sleep/sleep_while_thunder"
  }
}

