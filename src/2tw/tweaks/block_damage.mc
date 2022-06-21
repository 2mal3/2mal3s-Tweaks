
function loop {
  execute as @e[predicate=2tw:tweaks/block_damage/stand_on_damage_block,team=!thisTeamDoesNotExist,tag=!global.ignore,tag=!global.ignore.kill,tag=!smithed.block] run {
    # Deal 1 heart damage
    effect give @s minecraft:resistance 1 3 true
    effect give @s minecraft:instant_damage 1 0 true
  }
}


predicate stand_on_damage_block {
  "condition": "minecraft:location_check",
  "predicate": {
    "block": {
      "tag": "2tw:tweaks/block_damage/damage_blocks"
    }
  }
}

blocks damage_blocks {
  minecraft:stonecutter
  minecraft:rose_bush
}

