# Description: Tests if invisible_see_invisible rule is enabled
# AS: player, AT: @s
# Called from advancement: 2mal3:2tw/tweaks/invisible_see_invisible/get_invisibility
# Datapack by 2mal3

execute if score $invisible_see_invisible 2tw.config matches 1 run function 2mal3:2tw/tweaks/invisible_see_invisible/get_invisibility
execute if score $invisible_see_invisible 2tw.config matches 0 run advancement revoke @s only 2mal3:2tw/tweaks/invisible_see_invisible/get_invisibility
