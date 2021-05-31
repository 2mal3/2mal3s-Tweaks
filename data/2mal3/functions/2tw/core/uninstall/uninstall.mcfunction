# Description: Uninstalls the Datapack
# Called from function: core/uninstall/uninstall_ask
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={2tw.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"/","color":"gray"},{"text":"Server","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack uninstalled","color":"green"}]


# Stops the loops
schedule clear 2mal3:2tw/core/loops/minute
schedule clear 2mal3:2tw/core/loops/second
schedule clear 2mal3:2tw/core/loops/10_tick
schedule clear 2mal3:2tw/core/loops/4_tick

# Deletes the scoreboards
scoreboard objectives remove 2tw.data
scoreboard objectives remove 2tw.config
scoreboard objectives remove 2tw.debug_mode
scoreboard objectives remove 2tw.death
scoreboard objectives remove 2tw.walk
scoreboard objectives remove 2tw.sprint
scoreboard objectives remove 2tw.damage
scoreboard objectives remove 2tw.food
scoreboard objectives remove 2tw.health
scoreboard objectives remove 2tw.regeneration
# Remove teams
team remove 2tw.invisible

# Remove entitys
kill @e[type=minecraft:area_effect_cloud,tag=2tw.fire]

# Sends an uninstallation message to all players
tellraw @a [{"text":"2mal3's Tweaks Datapack v1.1.0 by 2mal3 was successfully uninstalled."}]

# Disables the datapack
datapack disable "file/2mal3s-Tweaks-v1.1.0"
datapack disable "file/2mal3s-Tweaks-v1.1.0.zip"
