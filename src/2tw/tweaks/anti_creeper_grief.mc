import ../../../macros/log.mcm


clock 1s {
  name loop

  execute if data storage 2tw:data gamerules{antiCreeperGrief: 1b} as @e[type=minecraft:creeper,tag=!2tw.antiCreeperGrief.processed,tag=!global.ignore] run {
    log 2TW debug entity <Disabled block damage>
    tag @s add 2tw.antiCreeperGrief.processed

    data modify entity @s ExplosionRadius set value 0
  }
}

