execute at @e[tag=hollownuke] run summon minecraft:armor_stand ^ ^ ^80 {Invisible:1b,Tags:[Nukefuel,makegrounded]}
execute at @e[tag=hollownuke] run summon minecraft:armor_stand ^ ^ ^60 {Invisible:1b,Tags:[Nukefuel,makegrounded]}
execute at @e[tag=hollownuke] run summon minecraft:armor_stand ^ ^ ^40 {Invisible:1b,Tags:[Nukefuel,makegrounded]}
execute at @e[tag=hollownuke] run summon minecraft:armor_stand ^ ^ ^10 {Invisible:1b,Tags:[Nukefuel,makegrounded]}
execute if entity @e[scores={lifetime=2..},limit=1] run schedule function jujutsucraft:jujutsukaisenathome/infinity/hollownuke/spawndamage 2t