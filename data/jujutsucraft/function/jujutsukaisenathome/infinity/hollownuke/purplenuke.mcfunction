execute as @s at @s as @a if score @s entityid0 = @e[tag=blueproj,distance=..10,limit=1] castedby run execute unless score @s blackflash matches 1.. run return fail
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["hollownuke"],Invisible:1b,Invulnerable:1b}
execute as @s at @s as @a if score @s entityid0 = @e[tag=blueproj,distance=..10,limit=1] castedby run scoreboard players remove @s cursedenergy 7000
execute as @s at @s as @a if score @s entityid0 = @e[tag=blueproj,distance=..10,limit=1] castedby run scoreboard players set @s abilitycooldowns 600
execute as @s at @s as @e[tag=blueproj,distance=..10,limit=1] run kill @s
scoreboard players set @n[tag=hollownuke] lifetime 100
function jujutsucraft:jujutsukaisenathome/infinity/hollownuke/spawndamage
kill @s
