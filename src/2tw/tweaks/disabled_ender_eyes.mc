import ../../../macros/log.mcm


function use {
  log 2TW debug entity <Deleted ender eye>
  advancement revoke @s only 2tw:tweaks/disabled_ender_eyes/use

  execute if data storage 2tw:data gamerules{disabled_ender_eyes: 1b} run {
    kill @e[type=minecraft:eye_of_ender,sort=nearest,limit=1,tag=!global.ignore,tag=!global.ignore.kill]
    execute if entity @s[gamemode=!creative,gamemode=!spectator] run give @s minecraft:ender_eye
  }
}

advancement use {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:used_ender_eye"
    }
  },
  "rewards": {
    "function": "2tw:tweaks/disabled_ender_eyes/use"
  }
}
