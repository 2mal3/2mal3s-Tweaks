
# Generate a random number in a given range
function random {
  # Prepare
  summon minecraft:marker ~ ~ ~ {Tags: ["2mal3.random"]}

  # Generate random number
  execute store result score .temp0 2mal3.data run data get entity @e[type=minecraft:marker,tag=2mal3.random,limit=1] UUID[0]

  scoreboard players operation .temp1 2mal3.data = .in1 2mal3.data
  scoreboard players add .temp1 2mal3.data 1
  scoreboard players operation .temp1 2mal3.data -= .in0 2mal3.data

  scoreboard players operation .temp0 2mal3.data %= .temp1 2mal3.data
  scoreboard players operation .temp0 2mal3.data += .in0 2mal3.data

  scoreboard players operation .out0 2mal3.data = .temp0 2mal3.data

  # Remove the marker
  kill @e[type=minecraft:marker,tag=2mal3.random]
}


blocks air {
  minecraft:air
  minecraft:cave_air
}
