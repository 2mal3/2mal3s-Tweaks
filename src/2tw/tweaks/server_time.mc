import ../../../macros/log.mcm


clock 60s {
  name loop

  execute if data storage 2tw:data gamerules{serverTime: 1b} run {
    scoreboard players operation .temp0 2tw.data = %players 2tw.data
    execute store result score %players 2tw.data run execute if entity @a[gamemode=!spectator]

    # Starts the server time
    execute if score .temp0 2tw.data matches 0 if score %players 2tw.data matches 1.. run {
      log 2TW debug server <Start server time>

      gamerule doDaylightCycle true
      gamerule doWeatherCycle true
      gamerule doFireTick true
      gamerule randomTickSpeed 3
    }
    # Stops the server time
    execute if score .temp0 2tw.data matches 1.. if score %players 2tw.data matches 0 run {
      log 2TW debug server <Stop server time>

      gamerule doDaylightCycle false
      gamerule doWeatherCycle false
      gamerule doFireTick false
      gamerule randomTickSpeed 0
    }
  }
}
