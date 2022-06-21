
function loop {
  execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ minecraft:powder_snow run effect give @s minecraft:mining_fatigue 1 2 true
}
