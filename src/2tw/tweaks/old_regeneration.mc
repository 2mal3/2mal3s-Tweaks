
clock 4s {
  name loop

  execute if data storage 2tw:data gamerules{oldRegeneration: 1b} as @a[scores={2tw.food=7..,2tw.health=..19}] run {
    effect give @s minecraft:regeneration 1 2 true
    effect give @s minecraft:hunger 1 39 true
  }
}
