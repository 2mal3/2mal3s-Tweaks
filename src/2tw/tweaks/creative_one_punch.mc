
clock 1s {
  name loop

  execute if data storage 2tw:data gamerules{creativeOnePunch: 1b} as @a[gamemode=creative] run {
    effect give @s minecraft:strength 2 255 true
  }
}
