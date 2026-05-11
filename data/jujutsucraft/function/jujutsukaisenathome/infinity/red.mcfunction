execute unless score @s cursedenergy matches 250.. run return fail
summon minecraft:marker ^ ^-0.5 ^0.25 {NoGravity:1b,Tags:["redproj","dpblockgun","dpprojectilefast"]}
execute as @e[tag=redproj,tag=!launchedred] run data modify entity @s Rotation set from entity @p Rotation
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 0
scoreboard players add @e[tag=redproj,tag=!launchedred] lifetime 20
scoreboard players set @s abilitycooldowns 5
scoreboard players set @s redcooldown 50
scoreboard players remove @s cursedenergy 2000
