item modify entity @s weapon.mainhand jujutsucraft:domainopen
execute at @s as @s run execute if score @e[tag=uvcenter,limit=1,distance=..30] uvsummoner = @s entityid0 run damage @e[tag=uvcenter,limit=1] 100 minecraft:player_attack by @s
execute at @s as @e[distance=..20] run playsound minecraft:entity.creaking.death block @s ~ ~ ~ 1 1