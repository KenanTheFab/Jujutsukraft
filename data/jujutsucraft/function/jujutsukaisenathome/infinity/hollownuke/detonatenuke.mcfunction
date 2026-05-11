execute at @e[tag=Nukefuel] run summon tnt ~ ~ ~ {fuse:1,explosion_power:16}
execute at @e[tag=Nukefuel] run place template jujutsucraft:carve48 ~-24 ~-24 ~-24
execute at @e[tag=Nukefuel] run kill @e[tag=Nukefuel]
execute if entity @e[tag=Nukefuel] run schedule function jujutsucraft:jujutsukaisenathome/infinity/hollownuke/detonatenuke 10t