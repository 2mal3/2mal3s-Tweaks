import ../../../macros/log.mcm


clock 1s {
  name loop

  execute if data storage 2tw:data gamerules{randomRespawn: 1b} as @a[scores={2tw.death=1..}] run {
    log 2TW debug entity <Respawned at a random position>

    summon minecraft:marker ~ ~ ~ {UUID: [I; -2086030680, 1564495578, -1494150251, 487953140]}
    spreadplayers ~ ~ 0 2000 true 83a9b2a8-5d40-4eda-a6f1-13951d1592f4
    execute at 83a9b2a8-5d40-4eda-a6f1-13951d1592f4 run spawnpoint @s ~ ~ ~
    kill 83a9b2a8-5d40-4eda-a6f1-13951d1592f4
  }

  execute if entity @a[scores={2tw.death=1..}] run schedule 2t replace {
    scoreboard players reset @a[scores={2tw.death=1..}] 2tw.death
  }
}
