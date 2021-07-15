# Description: Moves a player in the overworld
# AS: player in the end under -10, AT: @s
# Called from function: 2mal3:2tw/tweaks/end_above_overworld/end/test
# Datapack by 2mal3

# Tp the player in the overworld
execute in minecraft:overworld positioned ~ 900 ~ run tp @s ~ ~ ~

# Give some transit effects
effect give @s minecraft:nausea 10 0 true
effect give @s minecraft:blindness 5 0 true
