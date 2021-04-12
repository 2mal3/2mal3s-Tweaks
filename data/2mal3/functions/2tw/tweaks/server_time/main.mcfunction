# Description: Stops the time when no player is on the server
# AS: server, AT: server
# Called from function: 2mal3:2tw/core/loops/minute
# Datapack by 2mal3

# Temporarily saves the number of players in the last minute
scoreboard players operation .temp_0 2tw.data = .players 2tw.data
# Saves the current number of players
execute store result score .players 2tw.data run execute if entity @a[gamemode=!spectator]

# Lets the time run on again when the number of players has risen from zero to over one
execute if score .temp_0 2tw.data matches 0 if score .players 2tw.data matches 1.. run function 2mal3:2tw/tweaks/server_time/start
# Stops the time from running when the number of players has dropped from over one to zero
execute if score .temp_0 2tw.data matches 1.. if score .players 2tw.data matches 0 run function 2mal3:2tw/tweaks/server_time/stop
