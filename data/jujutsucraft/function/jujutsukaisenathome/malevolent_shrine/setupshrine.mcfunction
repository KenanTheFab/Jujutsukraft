# Get position of the "center" of the shrine, for ease of displacement.
execute store result score @s pos_x run data get entity @s Pos[0] 1000

execute store result score @s pos_y run data get entity @p Pos[1] 1000

execute store result score @s pos_z run data get entity @s Pos[2] 1000

#add to the score- basically adding to the coordinate.
#its messy but we are checking if the score (position) is negative or positive, removing or adding based on that.
execute if entity @s[scores={pos_x=..-1}] run scoreboard players add @s pos_x 1
execute if entity @s[scores={pos_x=1..}] run scoreboard players remove @s pos_x 1

#for Y it isn't neccessary, but eh
execute if entity @s[scores={pos_y=..-1}] run scoreboard players add @s pos_y 0
execute if entity @s[scores={pos_y=1..}] run scoreboard players remove @s pos_y 0

execute if entity @s[scores={pos_z=..-1}] run scoreboard players add @s pos_z 2000
execute if entity @s[scores={pos_z=1..}] run scoreboard players remove @s pos_z 2000

execute store result storage jujutsucraft:positioning pos_x double 0.001 run scoreboard players get @n[tag=shrinecenter] pos_x
execute store result storage jujutsucraft:positioning pos_y double 0.001 run scoreboard players get @n[tag=shrinecenter] pos_y
execute store result storage jujutsucraft:positioning pos_z double 0.001 run scoreboard players get @n[tag=shrinecenter] pos_z
#
function jujutsucraft:jujutsukaisenathome/malevolent_shrine/spawnshrine with storage jujutsucraft:positioning
tag @s add set_up