# Description: Installs the Datapack on first start
# AS: server, AT: server
# Called from function: 2mal3:2tw/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={2tw.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"/","color":"gray"},{"text":"Server","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack installed","color":"green"}]


# Adds scoreboards
scoreboard objectives add 2tw.data dummy
scoreboard objectives add 2tw.config dummy
scoreboard objectives add 2tw.debug_mode dummy
scoreboard objectives add 2tw.death deathCount
scoreboard objectives add 2tw.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add 2tw.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add 2tw.damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add 2tw.health health
scoreboard objectives add 2tw.food food
scoreboard objectives add 2tw.regeneration dummy
scoreboard objectives add 2tw.torches_time dummy
# Add teams
team add 2tw.invisible

# Set the version in format: xx.xx.xx
scoreboard players set $version 2tw.data 010200
# Set the start config
scoreboard players set $invisible_see_invisible 2tw.config 0
scoreboard players set $speed_paths 2tw.config 0
scoreboard players set $server_time 2tw.config 0
scoreboard players set $nerfed_elytra 2tw.config 0
scoreboard players set $better_end_crystals 2tw.config 0
scoreboard players set $anti_creeper_grief 2tw.config 0
scoreboard players set $realistic_fire 2tw.config 0
scoreboard players set $wandering_trader_notifications 2tw.config 0
scoreboard players set $disabled_ender_eyes 2tw.config 0
scoreboard players set $death_coordinates 2tw.config 0
scoreboard players set $path_generator 2tw.config 0
scoreboard players set $damage_infection 2tw.config 0
scoreboard players set $no_to_expensive 2tw.config 0
scoreboard players set $random_respawn 2tw.config 0
scoreboard players set $old_regeneration 2tw.config 0
scoreboard players set $armor_stand_arms 2tw.config 0
scoreboard players set $bush_hiding 2tw.config 0
scoreboard players set $projectile_block_damage 2tw.config 0
scoreboard players set $block_damage 2tw.config 0
scoreboard players set $realistic_torches 2tw.config 0
scoreboard players set $realistic_torches_time 2tw.config 20
scoreboard players set $glow_berries_glow 2tw.config 0
scoreboard players set $end_above_overworld 2tw.config 0


# Sends Insatlations message after 4 sekonds
schedule function 2mal3:2tw/core/first_run/send_message 4s


# Remembers that the Datapack was installed
scoreboard players set .first_run 2tw.data 1
