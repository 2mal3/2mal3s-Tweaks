# Description: Finds the right item frame
# AS: player, AT: player
# Called from advancements: 2mal3:2tw/tweaks/no_to_expensive
# Datapack by 2mal3

# Finds the right item frame
execute if score $no_to_expensive 2tw.config matches 1 as @e[type=minecraft:item_frame,predicate=2mal3:2tw/tweaks/no_to_expensive/have_item,sort=nearest,limit=1] at @s if block ^ ^ ^-1 #minecraft:anvil run function 2mal3:2tw/tweaks/no_to_expensive/test/2

# Reset advancement
advancement revoke @s only 2mal3:2tw/tweaks/no_to_expensive
