execute unless score @s cursedenergy matches 200.. run return fail
summon minecraft:marker ^ ^-0.5 ^0.25 {NoGravity:1b,Tags:["piebloproj","dpblockgun","dpprojectilesuperfast"]}

execute as @e[tag=piebloproj,tag=!launchedred] run data modify entity @s Rotation set from entity @p Rotation
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 1 2
scoreboard players add @e[tag=piebloproj] lifetime 40
scoreboard players set @s abilitycooldowns 5
scoreboard players set @s piercingcooldown 100
scoreboard players remove @s cursedenergy 200
damage @s 3 minecraft:player_attack