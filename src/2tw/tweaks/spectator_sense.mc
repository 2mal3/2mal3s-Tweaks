import ../../../macros/log.mcm


function loop {
  execute as @a[gamemode=spectator] at @s run {
    execute if score @s 2tw.spectatorId matches 0 run particle minecraft:dust 0.667 0.000 0.000 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 1 run particle minecraft:dust 1.000 0.333 0.333 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 2 run particle minecraft:dust 1.000 0.667 0.000 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 3 run particle minecraft:dust 1.000 1.000 0.333 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 4 run particle minecraft:dust 0.000 0.667 0.000 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 5 run particle minecraft:dust 0.333 1.000 0.333 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 6 run particle minecraft:dust 0.333 1.000 1.000 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 7 run particle minecraft:dust 0.000 0.667 0.667 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 8 run particle minecraft:dust 0.000 0.000 0.039 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 9 run particle minecraft:dust 0.333 0.333 1.000 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 10 run particle minecraft:dust 1.000 0.333 1.000 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 11 run particle minecraft:dust 0.667 0.000 0.667 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 12 run particle minecraft:dust 1.000 1.000 1.000 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 13 run particle minecraft:dust 0.667 0.667 0.667 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 14 run particle minecraft:dust 0.333 0.333 0.333 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
    execute if score @s 2tw.spectatorId matches 15 run particle minecraft:dust 0.000 0.000 0.000 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
  }
}
  
