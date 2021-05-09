# Description: Tests if the item can no longer be repaired
# AS: @e[type=minecraft:item_frame,predicate=2mal3:2tw/tweaks/no_to_expensive/have_item,sort=nearest,limit=1], AT: @s
# Called from advancements: 2mal3:2tw/tweaks/no_to_expensive/test/1
# Datapack by 2mal3

# Stores the repair cost of the item
execute store result score .temp_0 2tw.data run data get entity @s Item.tag.RepairCost
# Test if the repair cost is to hight
execute if score .temp_0 2tw.data matches 40.. run function 2mal3:2tw/tweaks/no_to_expensive/reset
