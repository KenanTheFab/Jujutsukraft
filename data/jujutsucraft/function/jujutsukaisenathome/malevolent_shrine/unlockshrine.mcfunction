execute if score @s shrinealert matches 1 run return fail
title @s times 40 80 40
title @s subtitle ["You unlocked ",{"text":"Cursed Technique: Shrine!","bold":true,"underlined":true,"color":"dark_red"}]
title @s title {"text":""}

execute if score @s shrine matches 1 run give @s iron_sword[enchantments={"jujutsucraft:shrine":1},custom_data={right_click:1b,shrine:1b}]
scoreboard players set @s shrine 1
scoreboard players set @s shrinealert 1
advancement grant @s only jujutsucraft:shrineawakening