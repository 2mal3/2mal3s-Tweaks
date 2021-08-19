# Description: Fills the first half of the placed chest with the items in the players inventory
# AS: every player that dies, AT: the fist half of the set chest
# Called from function: 2mal3:2tw/tweaks/death_chest/place/...
# Datapack by 2mal3

# Armor
item replace block ~ ~ ~ container.1 from entity @s armor.head
item replace block ~ ~ ~ container.2 from entity @s armor.chest
item replace block ~ ~ ~ container.3 from entity @s armor.legs
item replace block ~ ~ ~ container.4 from entity @s armor.feet
# Offhand
item replace block ~ ~ ~ container.7 from entity @s weapon.offhand
# Hotbar
item replace block ~ ~ ~ container.9 from entity @s hotbar.0
item replace block ~ ~ ~ container.10 from entity @s hotbar.1
item replace block ~ ~ ~ container.11 from entity @s hotbar.2
item replace block ~ ~ ~ container.12 from entity @s hotbar.3
item replace block ~ ~ ~ container.13 from entity @s hotbar.4
item replace block ~ ~ ~ container.14 from entity @s hotbar.5
item replace block ~ ~ ~ container.15 from entity @s hotbar.6
item replace block ~ ~ ~ container.16 from entity @s hotbar.7
item replace block ~ ~ ~ container.17 from entity @s hotbar.8

