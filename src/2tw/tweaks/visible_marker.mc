
function loop {
  execute as @e[type=minecraft:marker] at @s if entity @p[distance=..32] run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0
}
