
function loop {
  execute as @a[gamemode=!spectator,tag=!global.ignore] at @s if block ~ ~ ~ minecraft:powder_snow run effect give @s minecraft:mining_fatigue 1 2 true
}
