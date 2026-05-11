#execute as @s run say i am running caught
#spawn the armor stand at where the victim (@s) is.

execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["bluepull"],CustomName:"blue pull"}

#We set the bluepull's castedby to be equal of the nearest blueproj, which should be the one that is pulling it.
execute store result score @e[tag=bluepull] castedby run scoreboard players get @n[tag=blueproj] castedby

execute unless score @s entityid0 = @e[tag=bluepull,limit=1] castedby run ride @s mount @e[limit=1,tag=bluepull]
#execute if score @s entityid0 = @e[tag=bluepull,limit=1] castedby unless predicate jujutsucraft:issneaking run ride @s mount @e[limit=1,tag=bluepull]
tag @s add pulled