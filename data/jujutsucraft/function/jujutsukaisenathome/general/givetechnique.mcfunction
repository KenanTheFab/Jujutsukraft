execute if score @s limitless matches 1 run give @s diamond_sword[enchantments={"jujutsucraft:blue":1},custom_data={right_click:1b,gojoblue:1b}]

execute if score @s canrct matches 1 run give @s nether_star[enchantments={"jujutsucraft:rct":1},custom_data={right_click:1b,rcttoggle:1b}]

execute if score @s boogiewoogie matches 1 run give @s chorus_fruit[enchantments={"jujutsucraft:boogiewoogie":1},custom_data={right_click:1b,boogiewoogie:1b}]

execute if score @s bloodmanipulation matches 1 run give @s potion[potion_contents={custom_color:16711680},enchantments={"jujutsucraft:piercingblood":1},custom_data={right_click:1b,piercingblood:1b}]

execute if score @s shrine matches 1 run give @s iron_sword[enchantments={"jujutsucraft:shrine":1},custom_data={right_click:1b,shrine:1b}]

#Unlimited void
execute if score @s unlockeddomain matches 1 run execute if score @s limitless matches 1 run give @s heart_of_the_sea[custom_data={right_click:1b,domaintoggle:1b}]

#Malevolent Shrine
execute if score @s unlockeddomain matches 1 run execute if score @s shrine matches 1 run give @s heart_of_the_sea[custom_data={right_click:1b,domainopenms:1b}]

scoreboard players set @a[scores={cursedtechnique=1..}] cursedtechnique 0