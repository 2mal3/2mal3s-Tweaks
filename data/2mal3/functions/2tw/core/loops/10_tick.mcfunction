# Description: Main loop every 10 ticks
# AS: server, AT: server
# Called from functions: 2mal3:2tw/core/reload, 2mal3:2tw/core/loops/10_tick
# Datapack by 2mal3

# block damage
execute if score $block_damage 2tw.config matches 1 as @a[predicate=2mal3:2tw/tweaks/stand_on_damage_block] run function 2mal3:2tw/tweaks/block_damage


# Calls the function in the next second
schedule function 2mal3:2tw/core/loops/10_tick 10t replace
