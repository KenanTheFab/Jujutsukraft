execute unless score @s cursedenergy matches 750.. run return fail
$execute at @s as @e[tag=blueproj,limit=1,scores={castedby=$(id)},distance=0.001..] run kill @s

summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,Tags:["blueproj"],attributes:[{id:"minecraft:explosion_knockback_resistance",base:1000},{id:"minecraft:gravity",base:0.001}],CustomName:"blue projectile"}
execute as @n[tag=blueproj,tag=!launchedblue] run data modify entity @s Rotation set from entity @p Rotation

execute store result score @n[tag=blueproj,tag=!launchedblue] castedby run scoreboard players get @s entityid0
scoreboard players set @n[tag=blueproj,tag=!launchedblue] lifetime 300
scoreboard players set @s abilitycooldowns 20
scoreboard players set @s bluecooldown 60
scoreboard players remove @s cursedenergy 1000