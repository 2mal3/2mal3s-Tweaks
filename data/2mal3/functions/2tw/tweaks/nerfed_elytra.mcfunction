# Description: Makes all elytras in the end unrepairable
# AS: @e[type=minecraft:item_frame,tag=2tw.processed,predicate=2mal3:2tw/tweaks/nerfed_elytra/elytra,predicate=2mal3:2tw/tweaks/nerfed_elytra/in_end], AT: server
# Called from advancement: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3'sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Elytra nerfed!","color":"aqua"}]


# Makes the elytra unrepairable
data modify entity @s Item.tag.RepairCost set value 40

# Saves that the item frame has been processed
tag @s add 2tw.processed
