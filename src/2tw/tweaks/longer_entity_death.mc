import ../../../macros/log.mcm


function loop {
  execute as @e[tag=!2tw.longerEntityDeath.processed,tag=!global.ignore,type=!#2tw:tweaks/longer_entity_death/ignore,team=!thisTeamDoesNotExist] run {
    log 2TW debug entity Processed
    tag @s add 2tw.longerEntityDeath.processed

    data merge entity @s {DeathTime: -200}
  }
}

entities ignore {
  minecraft:slime
  minecraft:magma_cube
  minecraft:phantom
  minecraft:vex
  minecraft:creeper
  minecraft:ghast
  minecraft:armor_stand
  minecraft:player
}
