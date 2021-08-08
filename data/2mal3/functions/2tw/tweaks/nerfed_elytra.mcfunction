# Description: Removes the mending enchantment from every equiped elytra with mending
# AS: @a[predicate=2mal3:2tw/tweaks/nerfed_elytra/equiped_elytra_with_mending], AT: server
# Called from advancement: 2mal3:2tw/core/loops/second
# Datapack by 2mal3

tellraw @a[scores={2tw.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"2mal3sTweaks","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"/","color":"gray"},{"selector":"@s","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Elytra nerfed","color":"aqua"}]

# Removes the mending enchantment
item modify entity @s armor.chest 2mal3:2tw/nerfed_elytra/remove_mending
# Give some xp in compensation
xp add @s 30 points
