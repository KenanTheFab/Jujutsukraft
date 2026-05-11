particle minecraft:rain ^ ^ ^0.1 0.01 0.01 0.01 10 1 normal
execute if entity @e[tag=castgoal,distance=..5] run return run function jujutsucraft:general/raycast/pushcast
execute positioned ^ ^ ^0.1 run function jujutsucraft:general/raycast/testcast
#say cast