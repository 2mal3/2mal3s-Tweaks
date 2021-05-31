# Description: Starts the time
# AS: server, AT: server
# Called from function: 2mal3:2tw/tweaks/server_time/main
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"/","color":"gray"},{"text":"Server","color":"green"},{"text":"]: ","color":"gray"},{"text":"Start server time","color":"green"}]


# Set the gamerules
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doFireTick true
gamerule randomTickSpeed 3
