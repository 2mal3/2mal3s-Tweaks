# Description: Moves a player in the end
# AS: player in the overworld over 1000, AT: @s
# Called from function: 2mal3:2tw/tweaks/end_above_overworld/overworld/test
# Datapack by 2mal3

# Tp the player in the end
execute in minecraft:the_end positioned ~ 10 ~ run tp @s ~ ~ ~

# Give some transit effects
effect give @s minecraft:nausea 10 0 true
effect give @s minecraft:blindness 5 0 true
