import ../../macros/log.mcm


dir clocks {
  clock 60s {
    name minute

    execute if data storage 2tw:data gamerules{realistic_torches: 1b} run function 2tw:tweaks/realistic_torches/loop
    execute if data storage 2tw:data gamerules{server_time: 1b} run function 2tw:tweaks/server_time/loop
    execute if data storage 2tw:data gamerules{unlock_all_recipes: 1b} run function 2tw:tweaks/unlock_all_recipes/loop
    execute if data storage 2tw:data gamerules{wandering_trader_notifications: 1b} run function 2tw:tweaks/wandering_trader_notifications/loop
    execute if data storage 2tw:data gamerules{fish_traps: 1b} run function 2tw:tweaks/fish_traps/loop
    execute if data storage 2tw:data gamerules{self_planting_saplings: 1b} run function 2tw:tweaks/self_planting_saplings/loop
  }

  clock 10s {
    name 10_second

    execute if data storage 2tw:data gamerules{longer_entity_death: 1b} run function 2tw:tweaks/longer_entity_death/loop
  }

  clock 4s {
    name 4_second

    execute if data storage 2tw:data gamerules{old_regeneration: 1b} run function 2tw:tweaks/old_regeneration/loop
  }

  clock 1s {
    name second

    execute if data storage 2tw:data gamerules{anti_creeper_grief: 1b} run function 2tw:tweaks/anti_creeper_grief/loop
    execute if data storage 2tw:data gamerules{better_end_crystals: 1b} run function 2tw:tweaks/better_end_crystals/loop
    execute if data storage 2tw:data gamerules{creative_one_punch: 1b} run function 2tw:tweaks/creative_one_punch/loop
    execute if data storage 2tw:data gamerules{damage_infection: 1b} run function 2tw:tweaks/damage_infection/loop
    execute if data storage 2tw:data gamerules{death_chest: 1b} run function 2tw:tweaks/death_chest/loop
    execute if data storage 2tw:data gamerules{death_coordinates: 1b} run function 2tw:tweaks/death_coordinates/loop
    execute if data storage 2tw:data gamerules{harder_powder_snow: 1b} run function 2tw:tweaks/harder_powder_snow/loop
    execute if data storage 2tw:data gamerules{nerfed_elytra: 1b} run function 2tw:tweaks/nerfed_elytra/loop
    execute if data storage 2tw:data gamerules{only_ruined_portals: 1b} run function 2tw:tweaks/only_ruined_portals/loop
    execute if data storage 2tw:data gamerules{path_generator: 1b} run function 2tw:tweaks/path_generator/loop
    execute if data storage 2tw:data gamerules{random_respawn: 1b} run function 2tw:tweaks/random_respawn/loop
    execute if data storage 2tw:data gamerules{realistic_fire: 1b} run function 2tw:tweaks/realistic_fire/loop_second
    execute if data storage 2tw:data gamerules{visible_marker: 1b} run function 2tw:tweaks/visible_marker/loop
    execute if data storage 2tw:data gamerules{item_sign: 1b} run function 2tw:tweaks/item_sign/loop
    execute if data storage 2tw:data gamerules{end_crystal_healing: 1b} run function 2tw:tweaks/end_crystal_healing/loop
    execute if data storage 2tw:data gamerules{warden_tinnitus: 1b} run function 2tw:tweaks/warden_tinnitus/clock/second

    # Reset scoreboard triggers
    execute as @a run {
      scoreboard players reset @s[scores={2tw.damage=1..}] 2tw.damage
      scoreboard players reset @s[scores={2tw.death=1..}] 2tw.death
    }
  }

  clock 10t {
    name 10_tick

    execute if data storage 2tw:data gamerules{block_damage: 1b} run function 2tw:tweaks/block_damage/loop
    execute if data storage 2tw:data gamerules{reduced_debug_info: 1b} run function 2tw:tweaks/reduced_debug_info/loop
  }

  clock 5t {
    name 5_tick

    execute if data storage 2tw:data gamerules{bush_hiding: 1b} run function 2tw:tweaks/bush_hiding/loop
    execute if data storage 2tw:data gamerules{dynamic_light: 1b} run function 2tw:tweaks/dynamic_light/loop
    execute if data storage 2tw:data gamerules{elytra_closing: 1b} run function 2tw:tweaks/elytra_closing/loop
    execute if data storage 2tw:data gamerules{projectile_block_damage: 1b} run function 2tw:tweaks/projectile_block_damage/loop
    execute if data storage 2tw:data gamerules{realistic_fire: 1b} run function 2tw:tweaks/realistic_fire/loop_4_tick
    execute if data storage 2tw:data gamerules{spectator_sense: 1b} run function 2tw:tweaks/spectator_sense/loop

    # Reset scoreboard triggers
    execute as @a run {
      scoreboard players reset @s[scores={2tw.sneaking=1..}] 2tw.sneaking
      scoreboard players reset @s[scores={2tw.use_elytra=1..}] 2tw.use_elytra
    }
  }

  clock 4t {
    name 4_tick

    execute if data storage 2tw:data gamerules{speed_paths: 1b} run function 2tw:tweaks/speed_paths/loop
  }

  clock 1t {
    name tick

    execute if data storage 2tw:data gamerules{rope_ladder: 1b} run function 2tw:tweaks/rope_ladder/loop
    execute if data storage 2tw:data gamerules{warden_tinnitus: 1b} run function 2tw:tweaks/warden_tinnitus/clock/tick_
    execute if data storage 2tw:data gamerules{auto_harvest: 1b} run function 2tw:tweaks/auto_harvest/clock
  }
}


## Loading, installing and updating
function load {
  log 2TW info server <Datapack reloaded>

  scoreboard objectives add 2tw.data dummy

  # scoreboard players set %installed 2tw.data 0
  # Initializes the datapack at the first startup or new version
  execute unless score %installed 2tw.data matches 1 run {
    log 2TW info server <Datapack installed>
    scoreboard players set %installed 2tw.data 1

    # Add scoreboards
    scoreboard objectives add 2tw.data dummy
    scoreboard objectives add 2tw.schedule dummy
    scoreboard objectives add 2mal3.debug_mode dummy
    scoreboard objectives add 2tw.uuid dummy
    scoreboard objectives add 2tw.death deathCount
    scoreboard objectives add 2tw.spectator_id dummy
    scoreboard objectives add 2tw.damage minecraft.custom:minecraft.damage_taken
    scoreboard objectives add 2tw.death deathCount
    scoreboard objectives add 2tw.food food
    scoreboard objectives add 2tw.health health
    scoreboard objectives add 2tw.leave_game minecraft.custom:minecraft.leave_game
    scoreboard objectives add 2tw.walk minecraft.custom:minecraft.walk_one_cm
    scoreboard objectives add 2tw.sprint minecraft.custom:minecraft.sprint_one_cm
    scoreboard objectives add 2tw.realistic_torches_time dummy
    scoreboard objectives add 2tw.use_elytra minecraft.custom:minecraft.aviate_one_cm
    scoreboard objectives add 2tw.sneaking minecraft.custom:minecraft.sneak_time
    scoreboard objectives add 2tw.mined_ladder minecraft.mined:minecraft.ladder
    scoreboard objectives add sign trigger
    scoreboard objectives add 2tw.tinnitus_time dummy
    scoreboard players set $3 2tw.data 3
    scoreboard players set $16 2tw.data 16
    scoreboard players set $50 2tw.data 50
    scoreboard players set $1000 2tw.data 1000
    # Set the version in format: xx.xx.xx
    scoreboard players set $version 2tw.data 020500

    # Add teams
    team add 2tw.invisible
    team modify 2tw.invisible seeFriendlyInvisibles true
    team add 2tw.overworld
    team modify 2tw.overworld color green
    team add 2tw.nether
    team modify 2tw.nether color red
    team add 2tw.end
    team modify 2tw.end color yellow

    # Set gamerules
    (
      data merge storage 2tw:data {
        gamerules: {
          random_respawn: 0b,
          unlock_all_recipes: 0b,
          spectator_sense: 0b,
          nerfed_elytra: 0b,
          glow_berries_glow: 0b,
          disabled_ender_eyes: 0b,
          death_coordinates: 0b,
          damage_infection: 0b,
          block_damage: 0b,
          better_end_crystals: 0b,
          armor_stand_arms: 0b,
          anti_creeper_grief: 0b,
          wandering_trader_notifications: 0b,
          spyglass_selection: 0b,
          server_time: 0b,
          tnt_auto_prime: 0b,
          creative_one_punch: 0b,
          visible_marker: 0b,
          bush_hiding: 0b,
          higher_bell_range: 0b,
          dynamic_light: 0b,
          invisible_see_invisible: 0b,
          old_regeneration: 0b,
          squid_ink_blindness: 0b,
          end_above_overworld: 0b,
          path_generator: 0b,
          longer_entity_death: 0b,
          realistic_torches: 0b,
          realistic_fire: 0b,
          no_to_expensive: 0b,
          death_chest: 0b,
          harder_powder_snow: 0b,
          only_ruined_portals: 0b,
          creative_insta_tame: 0b,
          speed_paths: 0b,
          projectile_block_damage: 0b,
          no_thunderstorm_sleep: 0b,
          elytra_closing: 0b,
          rope_ladder: 0b,
          coloured_dimension_names: 0b,
          fish_traps: 0b,
          self_planting_saplings: 0b,
          invisible_item_frames: 0b,
          item_sign: 0b,
          end_crystal_healing: 0b,
          reduced_debug_info: 0b,
          first_join_message: 0b,
          warden_tinnitus: 0b,
          auto_harvest: 0b
        }
      }
    )
    scoreboard players set $maxTime 2tw.realistic_torches_time 20


    schedule 4s replace {
      tellraw @a {"text":"2mal3's Tweaks v2.5.0 by 2mal3 was installed!","color":"green"}
    }
  }

  # Update datapack
  execute if score %installed 2tw.data matches 1 unless score $version 2tw.data matches 020500 run {
    log 2TW info server <Update datapack ...>

    # v2.1.0
    execute if score $version 2tw.data matches 020000 run {
      log 2TW info server <Updated from v2.0.0 to v2.1.0>
      scoreboard players set $version 2tw.data 020010

      # Init new modules in the settings
      data modify storage 2tw:data gamerules.no_thunderstorm_sleep set value 0b
      data modify storage 2tw:data gamerules.elytra_closing set value 0b
      data modify storage 2tw:data gamerules.rope_ladder set value 0b
      data modify storage 2tw:data gamerules.coloured_dimension_names set value 0b
      data modify storage 2tw:data gamerules.fish_traps set value 0b

      # Add new scoreboards
      scoreboard objectives add 2tw.use_elytra minecraft.custom:minecraft.aviate_one_cm
      scoreboard objectives add 2tw.sneaking minecraft.custom:minecraft.sneak_time
      scoreboard objectives add 2tw.schedule dummy
      scoreboard objectives add 2tw.mined_ladder minecraft.mined:minecraft.ladder
      # Add new teams
      team modify 2tw.invisible seeFriendlyInvisibles true
      team add 2tw.overworld
      team modify 2tw.overworld color green
      team add 2tw.nether
      team modify 2tw.nether color red
      team add 2tw.end
      team modify 2tw.end color yellow
    }

    # v2.2.0
    execute if score $version 2tw.data matches 020010 run {
      log 2TW info server <Updated from v2.1.0 to v2.2.0>
      scoreboard players set $version 2tw.data 020200

      # Init new modules in the settings
      data modify storage 2tw:data gamerules.self_planting_saplings set value 0b
      data modify storage 2tw:data gamerules.invisible_item_frames set value 0b

      # Add new scoreboards
      scoreboard objectives add 2tw.schedule dummy
    }

    # v2.3.0
    execute if score $version 2tw.data matches 020200 run {
      log 2TW info server <Updated from v2.2.0 to v2.3.0>
      scoreboard players set $version 2tw.data 020300

      # Init new modules in the settings
      data modify storage 2tw:data gamerules.item_sign set value 0b
    }

    # v2.4.0
    execute if score $version 2tw.data matches 020300 run {
      log 2TW info server <Updated from v2.3.0 to v2.4.0>
      scoreboard players set $version 2tw.data 020400

      data modify storage 2tw:data gamerules.end_crystal_healing set value 0b
      data modify storage 2tw:data gamerules.reduced_debug_info set value 0b
      data modify storage 2tw:data gamerules.spyglass_selection set value 0b
    }

    # v2.5.0
    execute if score $version 2tw.data matches 020400 run {
      log 2TW info server <Updated from v2.4.0 to v2.5.0>
      scoreboard players set $version 2tw.data 020500

      data modify storage 2tw:data gamerules.first_join_message set value 0b
      data modify storage 2tw:data gamerules.warden_tinnitus set value 0b
      data modify storage 2tw:data gamerules.auto_harvest set value 0b
    }
  }

  # Init extensions to, for example, change settings
  schedule 1s replace {
    log 2TW info server <Init API>
    function #2tw:api/v1/init
  }
}


## First join
function first_join {
  # Sends a welcome message if activated
  execute if data storage 2tw:data gamerules{first_join_message: 1b} run function 2tw:tweaks/first_join_message/message

  # Gives the player a unique id based on the UUID for the spectator sense module
  execute store result score .temp_0 2tw.data run data get entity @s UUID[0]
  execute store result score .temp_1 2tw.data run data get entity @s UUID[1]
  execute store result score .temp_2 2tw.data run data get entity @s UUID[2]
  execute store result score .temp_3 2tw.data run data get entity @s UUID[3]

  scoreboard players operation .temp_0 2tw.data += .temp_1 2tw.data
  scoreboard players operation .temp_0 2tw.data += .temp_2 2tw.data
  scoreboard players operation .temp_0 2tw.data += .temp_3 2tw.data

  scoreboard players operation .temp_0 2tw.data %= $16 2tw.data

  scoreboard players operation @s 2tw.spectator_id = .temp_0 2tw.data

  # Gives the player a unique id
  scoreboard players add %id 2tw.data 1
  scoreboard players operation @s 2tw.uuid = %id 2tw.data

  # Warns the player if he uses a not supported  minecraft version
  execute store result score .temp_0 2tw.data run data get entity @s DataVersion
  execute unless score .temp_0 2tw.data matches 3105.. run tellraw @s [{"text":"[","color":"gray"},{"text":"2TW","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text": "/","color": "gray"},{"text": "Server","color": "gold"},{"text":"]: ","color":"gray"},{"text":"This Minecraft version is not supported by the datapack. Please use the 1.19 to prevent errors.","color":"gold"}]
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
    "title": "2mal3s Tweaks v2.5.0",
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
  scoreboard objectives remove 2tw.spectator_id
  scoreboard objectives remove 2tw.damage
  scoreboard objectives remove 2tw.death
  scoreboard objectives remove 2tw.food
  scoreboard objectives remove 2tw.health
  scoreboard objectives remove 2tw.leave_game
  scoreboard objectives remove 2tw.sprint
  scoreboard objectives remove 2tw.walk
  scoreboard objectives remove 2tw.realistic_torches_time
  scoreboard objectives remove 2tw.use_elytra
  scoreboard objectives remove 2tw.sneaking
  scoreboard objectives remove 2tw.schedule
  scoreboard objectives remove 2tw.mined_ladder
  scoreboard objectives remove 2tw.tinnitus_time
  # Remove teams
  team remove 2tw.invisible
  team remove 2tw.overworld
  team remove 2tw.nether
  team remove 2tw.end

  # Stop loops
  schedule clear 2tw:core/clocks/minute
  schedule clear 2tw:core/clocks/10_second
  schedule clear 2tw:core/clocks/4_second
  schedule clear 2tw:core/clocks/second
  schedule clear 2tw:core/clocks/10_tick
  schedule clear 2tw:core/clocks/5_tick
  schedule clear 2tw:core/clocks/4_tick

  # Sends an uninstallation message to all players
  tellraw @a {"text":"2mal3's Tweaks v2.5.0 by 2mal3 was successfully uninstalled.","color": "green"}

  # Disables the datapack
  datapack disable "file/2mal3s-Tweaks"
  datapack disable "file/2mal3s-Tweaks.zip"
}
