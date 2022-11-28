import ../../../macros/log.mcm


function loop {
  execute as @e[type=minecraft:creeper,tag=!2tw.anti_creeper_grief.processed,tag=!global.ignore,tag=!smithed.entity] run {
    log 2TW debug entity <Disabled block damage>
    tag @s add 2tw.anti_creeper_grief.processed

    data modify entity @s ExplosionRadius set value -2
  }
}
