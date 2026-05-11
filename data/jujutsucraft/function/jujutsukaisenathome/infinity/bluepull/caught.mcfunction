#execute as @s run say i am running caught
#spawn the armor stand at where the victim (@s) is.
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["bluepull"],CustomName:"blue pull"}
#$execute as @s at @s as @e[tag=bluepull,limit=1,distance..2] run scoreboard players set @s castedby $(castby)

#$execute if @s score @s entityid0 matches $(id) run say $(id)
#We set the bluepull's castedby to be equal of the nearest blueproj, which should be the one that is pulling it.
execute store result score @e[tag=bluepull] castedby run scoreboard players get @n[tag=blueproj] castedby
ride @s mount @e[limit=1,tag=bluepull]
tag @s add pulled