execute unless score @s domaincooldown matches ..1 run return fail
execute unless score @s cursedenergymax matches 5000.. run return fail
summon armor_stand ^ ^ ^-10 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["shrinecenter"]}
execute store result score @e[type=minecraft:armor_stand,tag=shrinecenter] shrinesummoner run data get entity @s UUID[0]
execute store result score @s shrinesummoner run data get entity @s UUID[0]
execute store result storage jujutsucraft:positioning owner int 1 run data get entity @s UUID[0]
execute as @n[tag=shrinecenter,limit=1,tag=!set_up] run data modify entity @s Rotation set from entity @p Rotation
execute at @n[tag=shrinecenter,limit=1,tag=!set_up] as @e[distance=..100] run playsound minecraft:block.bell.use block @s ~ ~ ~ 1 1
scoreboard players set @s domaincooldown 1200
execute as @s run execute as @n[tag=shrinecenter,limit=1,tag=!set_up] run function jujutsucraft:jujutsukaisenathome/malevolent_shrine/setupshrine
function jujutsucraft:jujutsukaisenathome/malevolent_shrine/surehit
scoreboard players set @e[tag=shrinecenter,limit=1,sort=nearest] lifetime 400