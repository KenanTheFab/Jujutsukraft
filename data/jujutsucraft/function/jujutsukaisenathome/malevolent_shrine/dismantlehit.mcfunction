#summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust",color:[0.000,0.000,0.000],scale:0.01},ReapplicationDelay:0.1,Radius:2f,Duration:40,DurationOnUse:-100f,Age:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:1,duration:20,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:wither",amplifier:20,duration:6,show_particles:0b,show_icon:0b}]}}
#tp @e[limit=1,type=area_effect_cloud] @n
execute if score ftick10 globalTick matches 1 run playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 0.1 0
execute as @n[type=!#jujutsucraft:nonlivingentities] run damage @s 1 minecraft:explosion by @e[sort=nearest,limit=1,type=minecraft:player]

#kill @n[type=area_effect_cloud,limit=1]