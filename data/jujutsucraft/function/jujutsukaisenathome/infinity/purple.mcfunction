execute unless score @s cursedenergy matches 1275.. run return fail
summon minecraft:marker ^ ^1 ^ {Invisible:1b,NoGravity:1b,Tags:["purpleproj","dpblockgun","dpprojectilefast"]}
execute store result score @n[tag=purpleproj] castedby run scoreboard players get @s entityid0
execute as @e[tag=purpleproj] run data modify entity @s Rotation set from entity @p Rotation
playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 1 0.35
scoreboard players add @e[tag=purpleproj] lifetime 20
scoreboard players set @s abilitycooldowns 100
scoreboard players set @s purplecooldown 300
scoreboard players remove @s cursedenergy 2500