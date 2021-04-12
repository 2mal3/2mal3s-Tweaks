# Description: Sends a debug message with information about the datapack and the world to the executing player
# Called from tag: 2mal3:2tw/debug
# Datapack by 2mal3

# Get variables
execute store result score .temp_0 2tw.data run data get entity @s DataVersion
execute store result score .temp_1 2tw.data run datapack list
execute store result score .temp_2 2tw.data run execute if entity @a

# 2tw version; minecraft version; datapack count; player count
tellraw @s [{"text":"Debug data: ","color":"gold"},{"score":{"name":"$version","objective":"2tw.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_0","objective":"2tw.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_1","objective":"2tw.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_2","objective":"2tw.data"},"color":"red"}]
