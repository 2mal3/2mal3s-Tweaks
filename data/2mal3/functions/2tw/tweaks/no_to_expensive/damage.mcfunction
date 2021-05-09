# Description: Makes the anvil more broken with a 12% chache
# AS: @e[type=minecraft:item_frame,predicate=2mal3:2tw/tweaks/no_to_expensive/have_item,sort=nearest,limit=1], AT: @s ^ ^ ^-1
# Called from advancements: 2mal3:2tw/tweaks/no_to_expensive/reset
# Datapack by 2mal3

# Makes the anvil more broken with a 12% chache
execute if block ~ ~ ~ minecraft:damaged_anvil run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:chipped_anvil run setblock ~ ~ ~ minecraft:damaged_anvil
execute if block ~ ~ ~ minecraft:anvil run setblock ~ ~ ~ minecraft:chipped_anvil

# Plays a broken sound
playsound minecraft:block.anvil.destroy block @a ~ ~ ~ 8 1
