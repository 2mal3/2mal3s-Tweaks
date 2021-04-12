# Description: Main loop every minute
# Called from functions: 2mal3:2tw/core/reload, 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Stops the time when no player is on the server
execute if score $server_time 2tw.config matches 1 run function 2mal3:2tw/tweaks/server_time/main

# Calls the function in the next second
schedule function 2mal3:2tw/core/loops/minute 60s replace
