import ../../../macros/log.mcm


function loop {
  execute as @a[scores={2tw.death=1..}] run {
    log 2TW debug entity <Respawned at a random position>

    summon minecraft:area_effect_cloud ~ ~ ~ {UUID: [I; -2086030680, 1564495578, -1494150251, 487953140]}
    spreadplayers 0 0 0 2000 true 83a9b2a8-5d40-4eda-a6f1-13951d1592f4
    execute at 83a9b2a8-5d40-4eda-a6f1-13951d1592f4 run spawnpoint @s ~ ~ ~
  }
}
