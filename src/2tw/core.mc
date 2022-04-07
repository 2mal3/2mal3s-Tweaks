import ../../macros/log.mcm


dir clocks {
  clock 60s {
    name minute

    execute if data storage 2tw:data gamerules{realisticTorches: 1b} run function 2tw:tweaks/realistic_torches/loop
    execute if data storage 2tw:data gamerules{serverTime: 1b} run function 2tw:tweaks/server_time/loop
    execute if data storage 2tw:data gamerules{unlockAllRecipes: 1b} run function 2tw:tweaks/unlock_all_recipes/loop
    execute if data storage 2tw:data gamerules{wanderingTraderNotifications: 1b} run function 2tw:tweaks/wandering_trader_notifications/loop
  }

  clock 10s {
    name 10_second

    execute if data storage 2tw:data gamerules{longerEntityDeath: 1b} run function 2tw:tweaks/longer_entity_death/loop
  }

  clock 4s {
    name 4_second

    execute if data storage 2tw:data gamerules{oldRegeneration: 1b} run function 2tw:tweaks/old_regeneration/loop
  }

  clock 1s {
    name second

    execute if data storage 2tw:data gamerules{antiCreeperGrief: 1b} run function 2tw:tweaks/anti_creeper_grief/loop
    execute if data storage 2tw:data gamerules{betterEndCrystals: 1b} run function 2tw:tweaks/better_end_crystals/loop
    execute if data storage 2tw:data gamerules{creativeOnePunch: 1b} run function 2tw:tweaks/creative_one_punch/loop
    execute if data storage 2tw:data gamerules{damageInfection: 1b} run function 2tw:tweaks/damage_infection/loop
    execute if data storage 2tw:data gamerules{deathChest: 1b} run function 2tw:tweaks/death_chest/loop
    execute if data storage 2tw:data gamerules{deathCoordinates: 1b} run function 2tw:tweaks/death_coordinates/loop
    execute if data storage 2tw:data gamerules{harderPowderSnow: 1b} run function 2tw:tweaks/harder_powder_snow/loop
    execute if data storage 2tw:data gamerules{nerfedElytra: 1b} run function 2tw:tweaks/nerfed_elytra/loop
    execute if data storage 2tw:data gamerules{onlyRuinedPortals: 1b} run function 2tw:tweaks/only_ruined_portals/loop
    execute if data storage 2tw:data gamerules{pathGenerator: 1b} run function 2tw:tweaks/path_generator/loop
    execute if data storage 2tw:data gamerules{randomRespawn: 1b} run function 2tw:tweaks/random_respawn/loop
    execute if data storage 2tw:data gamerules{realisticFire: 1b} run function 2tw:tweaks/realistic_fire/loop_second
    execute if data storage 2tw:data gamerules{visibleMarker: 1b} run function 2tw:tweaks/visible_marker/loop

    # Reset scoreboard triggers
    execute as @a run {
      scoreboard players reset @s[scores={2tw.damage=1..}] 2tw.damage
      scoreboard players reset @s[scores={2tw.death=1..}] 2tw.death
    }
  }

  clock 10t {
    name 10_tick

    execute if data storage 2tw:data gamerules{blockDamage: 1b} run function 2tw:tweaks/block_damage/loop
  }

  clock 5t {
    name 5_tick

    execute if data storage 2tw:data gamerules{bushHiding: 1b} run function 2tw:tweaks/bush_hiding/loop
    execute if data storage 2tw:data gamerules{dynamicLight: 1b} run function 2tw:tweaks/dynamic_light/loop
    execute if data storage 2tw:data gamerules{elytraClosing: 1b} run function 2tw:tweaks/elytra_closing/loop
    execute if data storage 2tw:data gamerules{projectileBlockDamage: 1b} run function 2tw:tweaks/projectile_block_damage/loop
    execute if data storage 2tw:data gamerules{realisticFire: 1b} run function 2tw:tweaks/realistic_fire/loop_4_tick
    execute if data storage 2tw:data gamerules{ropeLadder: 1b} run function 2tw:tweaks/rope_ladder/loop
    execute if data storage 2tw:data gamerules{spectatorSense: 1b} run function 2tw:tweaks/spectator_sense/loop

    # Reset scoreboard triggers
    execute as @a run {
      scoreboard players reset @s[scores={2tw.sneaking=1..}] 2tw.sneaking
      scoreboard players reset @s[scores={2tw.useElytra=1..}] 2tw.useElytra
    }
  }

  clock 4t {
    name 4_tick

    execute if data storage 2tw:data gamerules{speedPaths: 1b} run function 2tw:tweaks/speed_paths/loop
  }
}


## Loading, installing and updating
function load {
  log 2TW info server <Datapack reloaded>

  scoreboard objectives add 2tw.data dummy

  scoreboard players set %installed 2tw.data 0
  # Initializes the datapack at the first startup or new version
  execute unless score %installed 2tw.data matches 1 run {
    log 2TW info server <Datapack installed>
    scoreboard players set %installed 2tw.data 1

    scoreboard objectives add 2tw.data dummy
    scoreboard objectives add 2mal3.debugMode dummy
    scoreboard objectives add 2mal3.data dummy
    scoreboard objectives add 2tw.uuid dummy
    scoreboard objectives add 2tw.death deathCount
    scoreboard objectives add 2tw.spectatorId dummy
    scoreboard objectives add 2tw.damage minecraft.custom:minecraft.damage_taken
    scoreboard objectives add 2tw.death deathCount
    scoreboard objectives add 2tw.food food
    scoreboard objectives add 2tw.health health
    scoreboard objectives add 2tw.leaveGame minecraft.custom:minecraft.leave_game
    scoreboard objectives add 2tw.walk minecraft.custom:minecraft.walk_one_cm
    scoreboard objectives add 2tw.sprint minecraft.custom:minecraft.sprint_one_cm
    scoreboard objectives add 2tw.realisticTorchesTime dummy
    scoreboard objectives add 2tw.useElytra minecraft.custom:minecraft.aviate_one_cm
    scoreboard objectives add 2tw.sneaking minecraft.custom:minecraft.sneak_time
    scoreboard objectives add 2tw.schedule dummy
    scoreboard objectives add 2tw.minedLadder minecraft.mined:minecraft.ladder
    scoreboard players set $16 2tw.data 16
    # Set the version in format: xx.xx.xx
    scoreboard players set $version 2tw.data 020000

    team add 2tw.invisible
    team modify 2tw.invisible seeFriendlyInvisibles true

    # Set gamerulese
    data merge storage 2tw:data {gamerules: {randomRespawn: 0b, unlockAllRecipes: 0b, spectatorSense: 0b, nerfedElytra: 0b, glowBerriesGlow: 0b, disabledEnderEyes: 0b, deathCoordinates: 0b, damageInfection: 0b, blockDamage: 0b, betterEndCrystals: 0b, armorStandArms: 0b, antiCreeperGrief: 0b, wanderingTraderNotifications: 0b, spyglassS2election: 0b, serverTime: 0b, tntAutoPrime: 0b, creativeOnePunch: 0b, visibleMarker: 0b, bushHiding: 0b, higherBellRange: 0b, dynamicLight: 0b, invisibleSeeInvisible: 0b, oldRegeneration: 0b, squidInkBlindness: 0b, endAboveOverworld: 0b, pathGenerator: 0b, longerEntityDeath: 0b, realisticTorches: 0b, realisticFire: 0b, noToExpensive: 0b, deathChest: 0b, harderPowderSnow: 0b, onlyRuinedPortals: 0b, creativeInstaTame: 0b, speedPaths: 0b, projectileBlockDamage: 0b, noThunderstormSleep: 0b, elytraClosing: 0b, ropeLadder: 0b}}
    scoreboard players set $maxTime 2tw.realisticTorchesTime 20


    schedule 4s replace {
      tellraw @a {"text":"2mal3's Tweaks v2.0.0 by 2mal3 was installed!","color":"green"}
    }
  }
  execute if score %installed 2tw.data matches 1 unless score $version 2tw.data matches 020000 run {
    log 2TW info server <Updated datapack>
    scoreboard players set $version 2tw.data 020000
  }
}


## First join
function first_join {
  # Gives the player a uniqe id based on the UUID for the spectator sense module
  execute store result score .temp0 2tw.data run data get entity @s UUID[0]
  execute store result score .temp1 2tw.data run data get entity @s UUID[1]
  execute store result score .temp2 2tw.data run data get entity @s UUID[2]
  execute store result score .temp3 2tw.data run data get entity @s UUID[3]

  scoreboard players operation .temp0 2tw.data += .temp1 2tw.data
  scoreboard players operation .temp0 2tw.data += .temp2 2tw.data
  scoreboard players operation .temp0 2tw.data += .temp3 2tw.data

  scoreboard players operation .temp0 2tw.data %= $16 2tw.data

  scoreboard players operation @s 2tw.spectatorId = .temp0 2tw.data

  # Gives ther player a unique id
  scoreboard players add %id 2tw.data 1
  scoreboard players operation @s 2tw.uuid = %id 2tw.data

  ## Warns the player if he uses a not supportet  minecraft version
  execute store result score .temp0 2tw.data run data get entity @s DataVersion
  execute unless score .temp0 2tw.data matches 2860..2975 run tellraw @s [{"text":"[","color":"gray"},{"text":"2TW","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text": "/","color": "gray"},{"text": "Server","color": "gold"},{"text":"]: ","color":"gray"},{"text":"This Minecraft version is not supported by the datapack. Please use the 1.18.x to prevent errors.","color":"gold"}]
}

advancement first_join {
  "criteria": {
      "requirement": {
          "trigger": "minecraft:tick"
      }
  },
  "rewards": {
      "function": "2tw:core/first_join"
  }
}


## Datapack advancement
advancement 2tw {
  "display": {
    "title": "2mal3s Tweaks v2.0.0",
    "description": "Adds many small improvements to the game.",
    "icon": {
      "item": "minecraft:redstone_torch"
    },
    "announce_to_chat": false,
    "show_toast": false
  },
  "parent": "global:2mal3",
  "criteria": {
    "trigger": {
      "trigger": "minecraft:tick"
    }
  }
}


## Datapack uninstalling
function uninstall {
  log 2TW info server <Datapack uninstalled>

  # Deletes the scoreboards
  scoreboard objectives remove 2tw.data
  scoreboard objectives remove 2tw.uuid
  scoreboard objectives remove 2tw.death
  scoreboard objectives remove 2tw.spectatorId
  scoreboard objectives remove 2tw.damage
  scoreboard objectives remove 2tw.death
  scoreboard objectives remove 2tw.food
  scoreboard objectives remove 2tw.health
  scoreboard objectives remove 2tw.leaveGame
  scoreboard objectives remove 2tw.sprint
  scoreboard objectives remove 2tw.walk
  scoreboard objectives remove 2tw.realisticTorchesTime
  scoreboard objectives remove 2tw.useElytra
  scoreboard objectives remove 2tw.sneaking
  scoreboard objectives remove 2tw.schedule
  scoreboard objectives remove 2tw.minedLadder
  # Remove teams
  team remove 2tw.invisible

  # Stop loops
  schedule clear 2tw:core/clocks/minute
  schedule clear 2tw:core/clocks/10_second
  schedule clear 2tw:core/clocks/4_second
  schedule clear 2tw:core/clocks/second
  schedule clear 2tw:core/clocks/10_tick
  schedule clear 2tw:core/clocks/5_tick
  schedule clear 2tw:core/clocks/4_tick

  # Sends an uninstallation message to all players
  tellraw @a {"text":"2mal3's Tweaks v2.0.0 by 2mal3 was successfully uninstalled.","color": "green"}

  # Disables the datapack
  datapack disable "file/2mal3s-Tweaks"
  datapack disable "file/2mal3s-Tweaks-v2.0.0"
  datapack disable "file/2mal3s-Tweaks-v2.0.0.zip"
}
