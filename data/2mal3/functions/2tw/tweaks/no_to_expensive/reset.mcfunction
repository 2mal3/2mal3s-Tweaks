# Description: The item gets repaired
# AS: @e[type=minecraft:item_frame,predicate=2mal3:2tw/tweaks/no_to_expensive/have_item,sort=nearest,limit=1], AT: @s
# Called from advancements: 2mal3:2tw/tweaks/no_to_expensive/test/2
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@p","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Resetted the repair cost of a item","color":"aqua"}]


# Makes the item repairable again
data modify entity @s Item.tag.RepairCost set value 39

# Shows graphics and sound effects
playsound minecraft:block.anvil.use block @a ~ ~ ~ 8 1
particle minecraft:flame ^ ^ ^0.2 0.2 0.2 0.1 0.01 10

# Makes the anvil more broken with a 12% chache
execute if predicate 2mal3:2tw/tweaks/no_to_expensive/damage positioned ^ ^ ^-1 run function 2mal3:2tw/tweaks/no_to_expensive/damage
