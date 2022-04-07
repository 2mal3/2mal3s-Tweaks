
blocks air {
  minecraft:air
  minecraft:cave_air
}


# Globaly resets scoreboard triggers for compatiblity between modules
advancement reset {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:tick"
    }
  },
  "rewards": {
    "function": "2tw:utilities/reset"
  }
}

function reset {
  advancement revoke @s only 2tw:utilities/reset

  scoreboard players reset @a[scores={2tw.sneaking=1..}] 2tw.sneaking
}
