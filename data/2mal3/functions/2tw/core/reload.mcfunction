# Description: Commands when reloading the datapack
# Called from tag: minecraft:reaload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={2tw.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack reloaded!","color":"green"}]


# Add basic scoreboards
scoreboard objectives add 2tw.data dummy

# Initializes the datapack at the first startup or new version
execute unless score .first_run 2tw.data matches 1 run function 2mal3:2tw/core/first_run/main
execute if score .first_run 2tw.data matches 1 unless score $version 2tw.data matches 010100 run function 2mal3:2tw/core/first_run/update

# Starts the loops
schedule function 2mal3:2tw/core/loops/minute 60s replace
schedule function 2mal3:2tw/core/loops/second 1s replace
schedule function 2mal3:2tw/core/loops/4_tick 6t replace
