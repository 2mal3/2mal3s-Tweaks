import ../../../macros/log.mcm


function loop {
  scoreboard players enable @a sign

  execute as @a[scores={sign=1..}] run {
    log 2TW debug entity <Signed item>
    scoreboard players reset @s sign

    execute unless data entity @s SelectedItem.tag.2tw.signed run {
      item modify entity @s weapon.mainhand 2tw:tweaks/item_sign/sign
      item modify entity @s weapon.mainhand 2tw:tweaks/item_sign/save_sign
    }
  }
}

modifier sign {
  "function": "minecraft:set_lore",
  "entity": "this",
  "lore": [
    [
      {
        "text": "Signed by: ",
        "color": "gold"
      },
      {
        "selector": "@p",
        "color": "yellow"
      }
    ]
  ],
  "replace": false
}

modifier save_sign {
  "function": "minecraft:set_nbt",
  "tag": "{2tw:{signed:1b}}"
}
