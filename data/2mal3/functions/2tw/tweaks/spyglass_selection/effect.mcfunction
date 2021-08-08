# Description: Give the selectd entity a glowing effect
# AS: @e[tag=2tw.spyglass_selection.this], AT: player that looking at the enity and has dropped his spyglass
# Called from function: 2mal3:2tw/tweaks/spyglass_selection/check
# Datapack by 2mal3

tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text": "/","color": "gray"},{"selector":"@s", "color": "aqua"},{"text":"]: ","color":"gray"},{"text":"Selected entity","color":"aqua"}]

effect give @s minecraft:glowing 15 0 true
