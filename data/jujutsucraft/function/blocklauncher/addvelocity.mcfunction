# we store the data gained after "run". In essence it is like telling it where to store and then what to store.
# mojang please just add normal variables i beg you
execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.5

#I hate math bro
execute store result score @s motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s motion_y2 run data get entity @s Pos[1] 1000
execute store result score @s motion_z2 run data get entity @s Pos[2] 1000

# something something divide motion 2 with motion 1 then we convert it back from the 1000 multiplying bc scores are int instead of floats or doubles.
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s motion_x2 -= @s motion_x1

execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s motion_y2 -= @s motion_y1

execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s motion_z2 -= @s motion_z1

# Mark the projectile as having been affected.
tag @s add blockflying