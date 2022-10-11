import ../../../macros/log.mcm


function loop {
  execute as @e[type=minecraft:wandering_trader,tag=!2tw.wanderingTraderNotifications.processed,tag=!global.ignore,tag=!smithed.entity] run {
    log 2TW debug entity Spawned
    tag @s add 2tw.wanderingTraderNotifications.processed

    effect give @s minecraft:glowing 180 0 true
    tellraw @a [{"text":"A "},{"selector":"@s"},{"text":" has arrived near "},{"selector":"@p"},{"text":"."}]
    sequence {
      execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.2
      delay 5t
      execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.6
      delay 2t
      execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.4
    }
  }
}
