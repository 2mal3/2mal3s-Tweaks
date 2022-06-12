import ../../../macros/log.mcm


blocks replaceable {
  minecraft:air
  minecraft:cave_air
  minecraft:water
  minecraft:lava
  minecraft:grass
  minecraft:tall_grass
  minecraft:seagrass
  minecraft:tall_seagrass
  minecraft:sea_pickle
  minecraft:snow
  \#minecraft:flowers
  \#minecraft:wool_carpets
  \#minecraft:cave_vines
}


dir fill {
 function one {
   # Armor
    item replace block ~ ~ ~ container.1 from entity @s armor.head
    item replace block ~ ~ ~ container.2 from entity @s armor.chest
    item replace block ~ ~ ~ container.3 from entity @s armor.legs
    item replace block ~ ~ ~ container.4 from entity @s armor.feet
    # Offhand
    item replace block ~ ~ ~ container.7 from entity @s weapon.offhand
    # Hotbar
    item replace block ~ ~ ~ container.9 from entity @s hotbar.0
    item replace block ~ ~ ~ container.10 from entity @s hotbar.1
    item replace block ~ ~ ~ container.11 from entity @s hotbar.2
    item replace block ~ ~ ~ container.12 from entity @s hotbar.3
    item replace block ~ ~ ~ container.13 from entity @s hotbar.4
    item replace block ~ ~ ~ container.14 from entity @s hotbar.5
    item replace block ~ ~ ~ container.15 from entity @s hotbar.6
    item replace block ~ ~ ~ container.16 from entity @s hotbar.7
    item replace block ~ ~ ~ container.17 from entity @s hotbar.8
 }

  function two {
    item replace block ~ ~ ~ container.0 from entity @s inventory.0
    item replace block ~ ~ ~ container.1 from entity @s inventory.1
    item replace block ~ ~ ~ container.2 from entity @s inventory.2
    item replace block ~ ~ ~ container.3 from entity @s inventory.3
    item replace block ~ ~ ~ container.4 from entity @s inventory.4
    item replace block ~ ~ ~ container.5 from entity @s inventory.5
    item replace block ~ ~ ~ container.6 from entity @s inventory.6
    item replace block ~ ~ ~ container.7 from entity @s inventory.7
    item replace block ~ ~ ~ container.8 from entity @s inventory.8

    item replace block ~ ~ ~ container.9 from entity @s inventory.9
    item replace block ~ ~ ~ container.10 from entity @s inventory.10
    item replace block ~ ~ ~ container.11 from entity @s inventory.11
    item replace block ~ ~ ~ container.12 from entity @s inventory.12
    item replace block ~ ~ ~ container.13 from entity @s inventory.13
    item replace block ~ ~ ~ container.14 from entity @s inventory.14
    item replace block ~ ~ ~ container.15 from entity @s inventory.15
    item replace block ~ ~ ~ container.16 from entity @s inventory.16
    item replace block ~ ~ ~ container.17 from entity @s inventory.17

    item replace block ~ ~ ~ container.18 from entity @s inventory.18
    item replace block ~ ~ ~ container.19 from entity @s inventory.19
    item replace block ~ ~ ~ container.20 from entity @s inventory.20
    item replace block ~ ~ ~ container.21 from entity @s inventory.21
    item replace block ~ ~ ~ container.22 from entity @s inventory.22
    item replace block ~ ~ ~ container.23 from entity @s inventory.23
    item replace block ~ ~ ~ container.24 from entity @s inventory.24
    item replace block ~ ~ ~ container.25 from entity @s inventory.25
    item replace block ~ ~ ~ container.26 from entity @s inventory.26
  }
}


function find_facing {
  execute if score .temp0 2tw.data matches 0 if block ~ ~ ~1 #2tw:tweaks/death_chest/replaceable run {
    scoreboard players set .temp0 2tw.data 1
    setblock ~ ~ ~ minecraft:chest[type=right,facing=west]
    setblock ~ ~ ~1 minecraft:chest[type=left,facing=west]
    # Fill the chest
    function 2tw:tweaks/death_chest/fill/one
    execute positioned ~1 ~ ~ run function 2tw:tweaks/death_chest/fill/two
  }

  execute if score .temp0 2tw.data matches 0 if block ~1 ~ ~ #2tw:tweaks/death_chest/replaceable run {
    scoreboard players set .temp0 2tw.data 1
    setblock ~ ~ ~ minecraft:chest[type=right,facing=north]
    setblock ~-1 ~ ~ minecraft:chest[type=left,facing=north]
    # Fill the chest
    function 2tw:tweaks/death_chest/fill/one
    execute positioned ~1 ~ ~ run function 2tw:tweaks/death_chest/fill/two
  }

  execute if score .temp0 2tw.data matches 0 if block ~ ~ ~-1 #2tw:tweaks/death_chest/replaceable run {
    scoreboard players set .temp0 2tw.data 1
    setblock ~ ~ ~ minecraft:chest[type=right,facing=east]
    setblock ~ ~ ~-1 minecraft:chest[type=left,facing=east]
    # Fill the chest
    function 2tw:tweaks/death_chest/fill/one
    execute positioned ~1 ~ ~ run function 2tw:tweaks/death_chest/fill/two
  }

  execute if score .temp0 2tw.data matches 0 if block ~-1 ~ ~ #2tw:tweaks/death_chest/replaceable run {
    scoreboard players set .temp0 2tw.data 1
    setblock ~ ~ ~ minecraft:chest[type=left,facing=north]
    setblock ~1 ~ ~ minecraft:chest[type=right,facing=north]
    # Fill the chest
    function 2tw:tweaks/death_chest/fill/one
    execute positioned ~1 ~ ~ run function 2tw:tweaks/death_chest/fill/two
  }
}


function loop {
  execute as @a[scores={2tw.death=1..}] at @s run {
    name find_pos

    scoreboard players set .temp0 2tw.data 0
    # Search
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-4 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-4 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-4 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-4 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-4 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-4 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-4 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-4 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~-1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~0 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~0 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~0 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~0 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~0 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~0 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~0 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~0 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-4 ~3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-4 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-4 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-4 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-4 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-4 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-4 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-4 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-4 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~-1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~0 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~0 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~0 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~0 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~0 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~0 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~0 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~0 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-3 ~3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-4 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-4 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-4 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-4 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-4 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-4 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-4 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-4 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~-1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~0 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~0 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~0 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~0 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~0 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~0 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~0 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~0 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-2 ~3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-4 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-4 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-4 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-4 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-4 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-4 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-4 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-4 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~-1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~0 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~0 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~0 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~0 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~0 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~0 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~0 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~0 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~-1 ~3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-4 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-4 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-4 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-4 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-4 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-4 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-4 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-4 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~-1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~0 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~0 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~0 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~0 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~0 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~0 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~0 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~0 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~0 ~3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-4 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-4 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-4 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-4 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-4 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-4 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-4 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-4 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~-1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~0 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~0 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~0 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~0 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~0 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~0 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~0 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~0 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~1 ~3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-4 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-4 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-4 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-4 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-4 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-4 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-4 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-4 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~-1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~0 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~0 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~0 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~0 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~0 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~0 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~0 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~0 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~2 ~3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-4 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-4 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-4 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-4 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-4 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-4 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-4 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-4 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~-1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~0 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~0 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~0 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~0 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~0 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~0 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~0 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~0 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~1 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~1 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~1 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~1 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~1 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~1 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~1 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~1 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~2 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~2 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~2 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~2 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~2 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~2 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~2 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~2 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~3 ~-4 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~3 ~-3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~3 ~-2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~3 ~-1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~3 ~0 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~3 ~1 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~3 ~2 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    execute if score .temp0 2tw.data matches 0 positioned ~3 ~3 ~3 if block ~ ~ ~ #2tw:tweaks/death_chest/replaceable run function 2tw:tweaks/death_chest/find_facing
    # If the player falls in the void
    execute if score .temp0 2tw.data matches 0 positioned ~ 0 ~ run function 2tw:tweaks/death_chest/find_pos
  
    # Clear inventory and xp
    clear @s
    xp set @s 0 points
    xp set @s 0 levels
  }
}
