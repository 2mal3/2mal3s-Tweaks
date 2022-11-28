import ../../../macros/log.mcm


# overworld
advancement overworld {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:location",
      "conditions": {
        "player": {
          "location": {
            "dimension": "minecraft:overworld"
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/coloured_dimension_names/overworld"
  }
}

function overworld {
  log 2TW debug entity <Entered Overworld>

  advancement revoke @s only 2tw:tweaks/coloured_dimension_names/nether
  advancement revoke @s only 2tw:tweaks/coloured_dimension_names/end

  execute if data storage 2tw:data gamerules{coloured_dimension_names: 1b} run team join 2tw.overworld @s
}


# nether
advancement nether {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:location",
      "conditions": {
        "player": {
          "location": {
            "dimension": "minecraft:the_nether"
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/coloured_dimension_names/nether"
  }
}

function nether {
  log 2TW debug entity <Entered Nether>

  advancement revoke @s only 2tw:tweaks/coloured_dimension_names/overworld
  advancement revoke @s only 2tw:tweaks/coloured_dimension_names/end

  execute if data storage 2tw:data gamerules{coloured_dimension_names: 1b} run team join 2tw.nether @s
}


# end
advancement end {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:location",
      "conditions": {
        "player": {
          "location": {
            "dimension": "minecraft:the_end"
          }
        }
      }
    }
  },
  "rewards": {
    "function": "2tw:tweaks/coloured_dimension_names/end"
  }
}

function end {
  log 2TW debug entity <Entered End>

  advancement revoke @s only 2tw:tweaks/coloured_dimension_names/overworld
  advancement revoke @s only 2tw:tweaks/coloured_dimension_names/nether

  execute if data storage 2tw:data gamerules{coloured_dimension_names: 1b} run team join 2tw.end @s
}
