import ../../../macros/log.mcm


function loop {
  execute as @a[gamemode=!spectator,gamemode=!creative,tag=!global.ignore,predicate=!2tw:tweaks/only_ruined_portals/in_ruined_portal] at @s if block ~ ~ ~ minecraft:nether_portal run {
    log 2TW debug entity <Destroyed Portal>

    # Fancy effects
    playsound minecraft:entity.enderman.stare block @a ~ ~ ~ 1 2
    effect give @s minecraft:blindness 2 0 true
    LOOP(10){
      summon minecraft:bat ~ ~1 ~
    }
    # Destroy the portal
    setblock ~ ~ ~ minecraft:air
  }
}

predicate in_ruined_portal {
	"condition": "location_check",
	"predicate": {
		"feature": "minecraft:ruined_portal"
	}
}
