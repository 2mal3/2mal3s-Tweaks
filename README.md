# 2mal3s Tweaks
![GitHub release (latest by date)](https://img.shields.io/github/v/release/2mal3/2mal3s-Tweaks?style=flat-square) ![GitHub all releases](https://img.shields.io/github/downloads/2mal3/2mal3s-Tweaks/total?style=flat-square) ![GitHub](https://img.shields.io/github/license/2mal3/2mal3s-Tweaks?style=flat-square)

This datapack adds over 10 small adjustable improvements and tweaks to the normal vanilla game and spice it up a bit. At the same time no big changes are made to the gameplay, so it still feels "vanilla".

## 📖 Features:
- Over 10 different improvements and tweaks
- Still feels "vanilla"
- All modules can be easily switched on and off via the in-game menu
- Good performace
- Multiplayer compatible

All modules can be turned on and off via the in-game menu, so you only have to use the ones you want. This can be opened with the command `/function #2mal3:2tw/menu`.                                                                     
**At the beginning all modules are switched off.**

## 📝 Tweaks:
- **Invisible see invisible**: Invisible can see each other.
- **Speed paths**: You can run faster on path blocks.
- **Server time**: As long as no player is on the server, the time is stopped.
- **Nerfed elytra**: Nerfs Elytras by making them impossible to enchant or repair.
- **Better End Crystals**: Prevents protected End Crystals from being easily destroyed from the ground.
- **Anti creeper grief**: Prevents Creeper from causing block damage.
- **Realistic fire**: Fire is more relaistic.
- **Wandering Trader notifications**: When a Wandering Trader appears a notification is sent to all players and gets a short glowing effect.
- **Disabled ender eyes**: Ender eyes can no longer be used.
- **Death coordinates**: In case of a death, the coordinates and the dimension of the dead point are displayed.
- **Path generator**: Slowly generates a path along much-used routes.
- **Damage infection**: Players who take damage have a certain probability to get infected and receive negative effects.
- **No to expensive**: Place an unrepairable item in an item frame on an anvil to reset its repair cost.

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
The datapack is incompatible with datapacks that:
- Assign players to other teams (conflict with invisible_see_invisible module)
- Change the game rules doDaylightCycle, doWeatherCycle, doFireTick and randomTickSpeed (conflict with server_time module)
- Provide Elytras via ways other than End Ships (conflict with nerfed_elytra module)
- Reset enchantment cost of items (conflict with nerfed_elytra module)
- Use creeper for explosions (conflict with anti_creeper_grief module)
- Using wandering traders who are not supposed to be seen (conflict with wandering_trader_notifications module)
- Use flying ender eyes (conflict with disabled_ender_eyes module)

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
