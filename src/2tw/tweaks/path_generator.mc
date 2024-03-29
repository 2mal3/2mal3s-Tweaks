
function loop {
  execute as @a[gamemode=!spectator] at @s positioned ~ ~-1 ~ run {
    # Generates path blocks with a certain chance for running or sprinting players
    execute if entity @s[scores={2tw.walk=200..}] if predicate 2tw:utilities/random/30 run {
      # Path blocks in the overworld
      execute if block ~ ~ ~ minecraft:coarse_dirt run setblock ~ ~ ~ minecraft:dirt_path
      execute if block ~ ~ ~ minecraft:dirt run setblock ~ ~ ~ minecraft:coarse_dirt
      execute if block ~ ~ ~ #2tw:tweaks/path_generator/grass run setblock ~ ~ ~ minecraft:dirt
      # Path blocks in the nether
      execute if block ~ ~ ~ #2tw:tweaks/path_generator/nylium run setblock ~ ~ ~ minecraft:netherrack
    }
    execute if entity @s[scores={2tw.sprint=50..}] if predicate 2tw:utilities/random/50 run {
      # Path blocks in the overworld
      execute if block ~ ~ ~ minecraft:coarse_dirt run setblock ~ ~ ~ minecraft:dirt_path
      execute if block ~ ~ ~ minecraft:dirt run setblock ~ ~ ~ minecraft:coarse_dirt
      execute if block ~ ~ ~ #2tw:tweaks/path_generator/grass run setblock ~ ~ ~ minecraft:dirt
      # Path blocks in the nether
      execute if block ~ ~ ~ #2tw:tweaks/path_generator/nylium run setblock ~ ~ ~ minecraft:netherrack
    }

    # Resets the scoreboards
    scoreboard players reset @s[scores={2tw.walk=1..}] 2tw.walk
    scoreboard players reset @s[scores={2tw.sprint=1..}] 2tw.sprint
  }
}


blocks grass {
  minecraft:grass_block
  minecraft:podzol
  minecraft:mycelium
}

blocks nylium {
  minecraft:warped_nylium
  minecraft:crimson_nylium
}
