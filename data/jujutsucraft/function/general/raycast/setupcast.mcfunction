summon minecraft:armor_stand ^ ^ ^4 {Tags:["castgoal"],NoGravity:1b}
execute as @e[tag=castgoal,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[scores={raycasting=1},limit=1]
#say starting cast
scoreboard players set @s raycasting 0
function jujutsucraft:general/raycast/testcast