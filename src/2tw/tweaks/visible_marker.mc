
function loop {
  execute as @e[type=minecraft:marker] at @s run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0 force @a[distance=..64]
}
