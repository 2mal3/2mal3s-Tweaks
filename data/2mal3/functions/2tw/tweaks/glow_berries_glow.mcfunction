# Description: Players that eat glow berries get a short glowing effect
# AS: player, AT: player
# Called from advancement: 2mal3:2tw/tweaks/glow_berries_glow/eat_glow_berries
# Datapack by 2mal3

tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Player has eaten glow berries","color":"aqua"}]

# Reset advancement
advancement revoke @s only 2mal3:2tw/tweaks/glow_berries_glow/eat_glow_berries

# Give glowing effect if enabled
execute if score $glow_berries_glow 2tw.config matches 1 run effect give @s minecraft:glowing 30 0 false
