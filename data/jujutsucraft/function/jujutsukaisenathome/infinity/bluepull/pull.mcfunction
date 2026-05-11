#Store the ID of the nearest entity that isn't being pulled.
execute store result storage jujutsucraft:identification id double 1 run execute at @e[tag=blueproj] run scoreboard players get @e[distance=0.00001..8,type=!#jujutsucraft:nonlivingentities,tag=!pulled,limit=1,tag=!blueproj,tag=!bluepull] entityid0
execute if score ftick2 globalTick matches 0 run playsound minecraft:entity.breeze.charge player @a ~ ~ ~ 1 1
execute store result storage jujutsucraft:identification castby double 1 run scoreboard players get @s castedby
#We get the entityid0 (set in tick10, used to identify players and other entities) then pass it to check if the caster is about to be absorbed into the blue.
#We run the "caught" function as any entity within pull range.
execute as @e[tag=blueproj] at @s as @e[distance=1..8,type=!#jujutsucraft:nonlivingentities,tag=!pulled,type=!minecraft:player,tag=!uvcenter,tag=!shrinecenter] run function jujutsucraft:jujutsukaisenathome/infinity/bluepull/caught
execute as @e[tag=blueproj] at @s as @e[distance=1..8,tag=!pulled,type=minecraft:player] run function jujutsucraft:jujutsukaisenathome/infinity/bluepull/caughtplayer