execute unless score ftick10 globalTick matches 0 run return run function jujutsucraft:general/raycast/pushcast
execute as @e[tag=castgoal] run tp @s ^ ^ ^-.1
execute positioned ^ ^1 ^ run particle minecraft:rain ^ ^ ^0.1 0.01 0.01 0.01 10 1 normal
function jujutsucraft:general/raycast/testcast
#say push