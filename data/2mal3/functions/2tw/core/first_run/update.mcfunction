# Description: Adds new things at the first start of a new datapack version
# Called from function: 2mal3:2tw/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={2tw.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"/","color":"gray"},{"text":"Server","color":"green"},{"text":"]: ","color":"gray"},{"text":"Updated datapack","color":"green"}]


# Set version variable in format xx.xx.xx
scoreboard players set $version 2tw.data 010200

# Add new scoreboards
#scoreboard objectives add 2tw.torches_time dummy
# Add new configs
scoreboard players set $glow_berries_glow 2tw.config 0
scoreboard players set $end_above_overworld 2tw.config 0
