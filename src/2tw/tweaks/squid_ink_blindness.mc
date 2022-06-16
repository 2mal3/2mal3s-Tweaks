
advancement hit {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": {
          "type": "minecraft:squid"
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/squid_ink_blindness/hit"
  }
}

function hit {
  advancement revoke @s only 2tw:tweaks/squid_ink_blindness/hit

  execute if data storage 2tw:data gamerules{squidInkBlindness: 1b} run {
    execute if block ~ ~ ~ minecraft:water[level=0] at @e[type=minecraft:squid,sort=nearest,limit=1,tag=!global.ignore] positioned ^ ^ ^-3.5 run effect give @s[distance=..3.5] minecraft:blindness 2 0 false
  }
}
