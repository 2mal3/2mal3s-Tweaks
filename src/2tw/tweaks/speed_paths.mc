
clock 4t {
  name loop 

  execute if data storage 2tw:data gamerules{speedPaths: 1b} as @a[gamemode=!spectator] at @s if block ~ ~-0.9 ~ minecraft:dirt_path run effect give @s minecraft:speed 1 0 true
}
