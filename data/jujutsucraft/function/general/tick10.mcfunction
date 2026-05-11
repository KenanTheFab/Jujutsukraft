scoreboard players set ftick10 globalTick 0

#We do this in here for performance.
execute as @e[type=!#jujutsucraft:nonlivingentities] run scoreboard players add @s entityid0 0

# Only get IDs if the score is 0, this should make it so we arent constantly getting IDs every 10 ticks
execute as @e[scores={entityid0=0}] run execute store result score @s entityid0 run data get entity @s UUID[0]

execute as @a run function jujutsucraft:general/itemreplacement

execute as @e[tag=targeted] at @s run particle dust{color:[1,0,0],scale:1} ~ ~ ~ 0.01 1.1 0.01 0 15 normal
execute unless entity @e[tag=shrinecenter] run schedule clear jujutsucraft:jujutsukaisenathome/malevolent_shrine/surehit

execute at @e[name=smoketall] run particle minecraft:campfire_signal_smoke ~ ~4 ~ 0.0 1 0.0 .001 200
execute at @e[name=smoke] run particle minecraft:campfire_cosy_smoke ~ ~4 ~ 0.0 1 0.0 .001 2
execute at @e[name=smoketiny] run particle minecraft:smoke ~ ~4 ~ .01 .01 .01 .01 1
execute at @e[name=smokebig] run particle minecraft:large_smoke ~ ~4 ~ .01 .01 .01 .01 1

execute at @e[name=rain] run particle minecraft:rain ~ ~4 ~ .01 .01 .01 .01 4
execute at @e[name=splash] run particle minecraft:splash ~ ~4 ~ .01 .01 .01 .01 4

execute at @e[name=flame] run particle minecraft:flame ~ ~4 ~ .01 .01 .01 .01 4
execute at @e[name=flamesoul] run particle minecraft:soul_fire_flame ~ ~4 ~ .01 .01 .01 .01 4
execute at @e[name=flamecopper] run particle minecraft:copper_fire_flame ~ ~4 ~ .01 .01 .01 .01 4

# Displays cursed energy if it is below the maximum.
execute as @a unless score @s cursedenergy >= @s cursedenergymax run title @s actionbar ["",{"text":"Cursed Energy:","bold":true,"color":"#98c8d8","font":"minecraft:uniform"},{"text":" ","bold":true},{"score":{"name":"@a","objective":"cursedenergy"},"color":"#6060f4","font":"minecraft:uniform"},{"text":"/","bold":true,"color":"#98c8d8","font":"minecraft:uniform"},{"score":{"name":"@s","objective":"cursedenergymax"},"color":"#6060f4","font":"minecraft:uniform"}]

# Show it as red if the player is unable to use any cursed technique-.
execute as @a unless score @s cursedenergy = @s cursedenergymax run execute as @s if score @s abilitycooldowns matches 1.. run title @s actionbar ["",{"text":"Cursed Energy:","bold":true,"color":"#CE0000","font":"minecraft:uniform"},{"text":" ","bold":true},{"score":{"name":"@a","objective":"cursedenergy"},"color":"#CE0000","font":"minecraft:uniform"},{"text":"/","bold":true,"color":"#CE0000","font":"minecraft:uniform"},{"score":{"name":"@s","objective":"cursedenergymax"},"color":"#CE0000","font":"minecraft:uniform"}]

#Replace items. Since there is no way to "centralize" custom items I instead craft or put "fake" versions of the item,
#so I only have to modify one thing (loot modifier) instead of going through all of them.
execute as @a if items entity @s weapon.mainhand minecraft:rotten_flesh[minecraft:custom_data={"fakefinger":1b}] run function jujutsucraft:general/replaceitems/replacefinger

execute as @a if items entity @s weapon.mainhand minecraft:frogspawn[minecraft:custom_data={"fakedp":1b}] run function jujutsucraft:general/replaceitems/replacedeathpainting

execute as @a if score @s usingrct matches 1 run execute if score @s cursedenergy matches ..20 run scoreboard players set @s usingrct 0

execute as @a if score @s usingrct matches 1 run execute if score @s canrct matches 1 run function jujutsucraft:jujutsukaisenathome/general/rct

#Enable items. It is done every 10 ticks since it isn't really time sensitive, and it is more performant.
execute as @a run execute as @s if items entity @s weapon.mainhand *[enchantments={"jujutsucraft:blue":1}] run item modify entity @s weapon.mainhand jujutsucraft:blueapply
execute as @a run execute as @s if items entity @s weapon.mainhand *[enchantments={"jujutsucraft:shrine":1}] run item modify entity @s weapon.mainhand jujutsucraft:shrineapply
execute as @a run execute as @s if items entity @s weapon.mainhand *[enchantments={"jujutsucraft:rct":1}] run item modify entity @s weapon.mainhand jujutsucraft:rctoff
execute as @a run execute as @s if items entity @s weapon.mainhand *[enchantments={"jujutsucraft:boogiewoogie":1}] run item modify entity @s weapon.mainhand jujutsucraft:boogiewoogieapply
execute as @a run execute as @s if items entity @s weapon.mainhand *[enchantments={"jujutsucraft:piercingblood":1}] run item modify entity @s weapon.mainhand jujutsucraft:piercingbloodapply
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{"domaintoggle":1b}] run item modify entity @s weapon.mainhand jujutsucraft:domainopen
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{"domainopenms":1b}] run item modify entity @s weapon.mainhand jujutsucraft:summonms

# What cursed technique(s) the player has
execute as @a run scoreboard players add @s limitless 0
execute as @a run scoreboard players add @s shrine 0
execute as @a run scoreboard players add @s boogiewoogie 0

#Achievements
execute as @a as @s if score @s cursedenergymax matches 10000.. run advancement grant @s only jujutsucraft:pinnacle
schedule function jujutsucraft:general/tick10 10t
