import ../../macros/log.mcm


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

  # Sends an uninstallation message to all players
  tellraw @a {"text":"2mal3's Tweaks v2.0.0 by 2mal3 was successfully uninstalled.","color": "green"}

  # Disables the datapack
  datapack disable "file/2mal3s-Tweaks"
  datapack disable "file/2mal3s-Tweaks-v2.0.0"
  datapack disable "file/2mal3s-Tweaks-v2.0.0.zip"
}
