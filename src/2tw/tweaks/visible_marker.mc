
clock 1s {
  name loop
  
  execute if data storage 2tw:data gamerules{visibleMarker: 1b} as @e[type=minecraft:marker] at @s if entity @p[distance=..32] run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0
}
