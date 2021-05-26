# Description: Write all players who die their death coordinates in the chat
# AS: @a[scores={2tw.death=1..}], AT: server
# Called from function: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Died","color":"aqua"}]


# Saves the position and dimension
execute store result score .temp_0 2tw.data run data get entity @s Pos[0]
execute store result score .temp_1 2tw.data run data get entity @s Pos[1]
execute store result score .temp_2 2tw.data run data get entity @s Pos[2]

execute store result score .temp_3 2tw.data run data get entity @s Dimension


# Write the message
execute if score .temp_3 2tw.data matches 19 run tellraw @s [{"text":"You died at ","color":"white"},{"score":{"name":".temp_0","objective":"2tw.data"},"color":"gray"},{"text":", ","color":"white"},{"score":{"name":".temp_1","objective":"2tw.data"},"color":"gray"},{"text":", ","color":"white"},{"score":{"name":".temp_2","objective":"2tw.data"},"color":"gray"},{"text":" in the ","color":"white"},{"text":"overworld","color":"gray"},{"text":".","color":"white"}]
execute if score .temp_3 2tw.data matches 20 run tellraw @s [{"text":"You died at ","color":"white"},{"score":{"name":".temp_0","objective":"2tw.data"},"color":"gray"},{"text":", ","color":"white"},{"score":{"name":".temp_1","objective":"2tw.data"},"color":"gray"},{"text":", ","color":"white"},{"score":{"name":".temp_2","objective":"2tw.data"},"color":"gray"},{"text":" in the ","color":"white"},{"text":"nether","color":"gray"},{"text":".","color":"white"}]
execute if score .temp_3 2tw.data matches 17 run tellraw @s [{"text":"You died at ","color":"white"},{"score":{"name":".temp_0","objective":"2tw.data"},"color":"gray"},{"text":", ","color":"white"},{"score":{"name":".temp_1","objective":"2tw.data"},"color":"gray"},{"text":", ","color":"white"},{"score":{"name":".temp_2","objective":"2tw.data"},"color":"gray"},{"text":" in the ","color":"white"},{"text":"end","color":"gray"},{"text":".","color":"white"}]
