# 2mal3s Tweaks
![GitHub release (latest by date)](https://img.shields.io/github/v/release/2mal3/2mal3s-Tweaks?style=flat-square) ![GitHub all releases](https://img.shields.io/github/downloads/2mal3/2mal3s-Tweaks/total?style=flat-square) ![GitHub](https://img.shields.io/github/license/2mal3/2mal3s-Tweaks?style=flat-square)

This datapack adds over 25 small adjustable improvements and tweaks to the normal vanilla game and spice it up a bit. At the same time no big changes are made to the gameplay, so it still feels "vanilla".

## 📖 Features:
- Over 25 different improvements and tweaks
- Still feels "vanilla"
- All modules can be easily switched on and off via the in-game menu
- Good performace
- Multiplayer compatible

All modules can be turned on and off via the in-game menu, so you only have to use the ones you want. This can be opened with the command `/function #2mal3:2tw/menu`.                                                                     
**At the beginning all modules are switched off.**

## 📝 Tweaks:
- **Anti creeper grief**: Prevents Creeper from causing block damage.
- **Armor Stand Arms**: Gives all armor stands arms.
- **Better End Crystals**: Prevents protected End Crystals from being easily destroyed from the ground.
- **Block damage**: Players standing in rose bushes or stonecutters get damage.
- **Bush hiding**: Players who sneak in high plants become invisible.
- **Damage infection**: Players who take damage have a certain probability to get infected and receive negative effects.
- **Death chest**: Spawns a death chest at died players with their items.
- **Death coordinates**: In case of a death, the coordinates and the dimension of the dead point are displayed.
- **Disabled ender eyes**: Ender eyes can no longer be used.
- **End above overworld**: The player can go the end by flying high up in the overworld, and back by falling into the void in the end.
- **Glow Berries glow**: Players who eat glow berries get a short glowing effect.
- **Invisible see invisible**: Invisible can see each other.
- **Nerfed elytra**: Nerfs Elytras by making them impossible to enchant with mending.
- **No to expensive**: Place an unrepairable item in an item frame on an anvil to reset its repair cost.
- **Old regeneration**: The old pre 1.9 regeneration.
- **Path generator**: Slowly generates a path along much-used routes.
- **Projectile block damage**: Some projectiles can break glass panes.
- **Random respawn**: When you die, you respawn at a random location within a radius of 2000 blocks around the spawn.
- **Realistic fire**: Fire is more relaistic.
- **Realistic torches**: Torches burn out over time.
- **Server time**: As long as no player is on the server, the time is stopped.
- **Spectator sense**: Players in spectator mode are displayed with individual particles.
- **Speed paths**: You can run faster on path blocks.
- **Spyglass selection**: Sneak while looking at an entity with a spyglass to highlight it for a short time.
- **Unlock all recipes**: Automatically unlocks all recipes.
- **Wandering Trader notifications**: When a Wandering Trader appears a notification is sent to all players and gets a short glowing effect.

***

## 📊 Bug reports:
I do test my datapack, but I do not find all the bugs. To improve the quality, it helps a lot if you tell me about any bugs you find, so I can fix them. You can do this on the [GitHub](https://github.com/2mal3/2mal3s-Tweaks/issues) website as an issue. To help me better, it would also be handy if you debug the datapack. You can do this by simply run the command
`/function #2mal3:2tw/debug`
and write the displayed message into the bug report.

## 💾 Versions:
| ✅   | 1.16+        |
| --- | ------------ |
| ✅   | Singleplayer |
| ✅   | Multiplayer  |
| ✅   | Vanilla      |
| ✅   | Fabric       |
| ❔   | Forge        |
| ❔   | Realms       |
| ❔   | Bukkit       |
| ❔   | Spigot       |
| ❔   | PaperSpigot  |

## 🚀 Performance:
The performance of the datapack depends strongly on the activated modules, all modules have a different influence. As long as none is activated, the datapack consumes almost no resources.
But normally there should be no noticeable lags on small or medium sized survival worlds.

## ✅ Compatibility with other datapacks:
The datapack can be incompatible with datapacks that:
- Use creeper for explosions (conflict with anti_creeper_grief module)
- Modify the player death (conflict with death_chest module and may with death coordinates module)
- Use flying ender eyes (conflict with disabled_ender_eyes module)
- Where the player needs to go verry deep or hight in the world (conflict with end_above_overworld module)
- Assign players to other teams (conflict with invisible_see_invisible module)
- Change the game rules doDaylightCycle, doWeatherCycle, doFireTick and randomTickSpeed (conflict with server_time module)
- Provide Elytras via ways other than End Ships (conflict with nerfed_elytra module)
- Reset enchantment cost of items (conflict with nerfed_elytra module)
- Using wandering traders who are not supposed to be seen (conflict with wandering_trader_notifications module)

However, the datapack should be compatible with other datapacks that follow the [datapack conventions](https://mc-datapacks.github.io/en/).

***

## 🔄 Updating:
Just replace the old datapack file with the new one and reload the world. The rest is done by the datapack.

## ♻ Uninstallation:
- Execute the command `/function #2mal3:2tw/uninstall`
- Confirm that you want to uninstall the datapack
- Optional: Delete the datapack file from the datapack folder of the world
- Reload the world

***
