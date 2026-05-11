execute unless score @s cursedenergy matches 1000.. run return fail
summon minecraft:armor_stand ^ ^1 ^ {NoGravity:1b,Tags:["dismantleproj","dpblockgun","dpprojectilefast"],Invisible:1b,Marker:1b}
execute as @e[tag=dismantleproj,tag=!flyingdismantle] run data modify entity @s Rotation set from entity @p Rotation
data modify entity @e[tag=dismantleproj,sort=nearest,limit=1] Owner set from entity @s UUID
scoreboard players add @e[tag=dismantleproj,tag=!flyingdismantle] lifetime 20
execute as @e[tag=!flyingdismantle] run tag @s add flyingdismantle
playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.5 2
tag @s add flyingdismantle
scoreboard players set @s abilitycooldowns 1
scoreboard players set @s dismantlecooldown 1
scoreboard players remove @s cursedenergy 10