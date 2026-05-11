# summon a surehit dismantle. Despite the "surehit" tag it is just spawned randomly.
$summon minecraft:armor_stand $(pos_x) $(pos_y) $(pos_z) {Invisible:1b,Marker:1b,Tags:["surehit"],Name:["cut"]}
# give the cut the UUID (score) of the domain... expander? caster?
$execute as @n[tag=surehit,limit=1,tag=!shrinecenter] run scoreboard players set @s shrinesummoner $(owner)
# Put the cut somewhere within a 100 block radius of the shrine center, unless it has already shuffled, and is not a dismantle that is made to spawn on top of a target
$spreadplayers $(pos_x) $(pos_z) 2 100 false @e[tag=surehit,tag=!repositioned,tag=!targeted]
#We just spread it, so let's tag it as such and make sure it isn't shuffled again.
execute as @e[tag=!repositioned,tag=surehit,limit=1] run tag @s add repositioned
#Kills the slice after 20 ticks, or 1 second.
scoreboard players add @e[tag=surehit,tag=!lifetimeset,tag=!shrinecenter] lifetime 20
#Mark the cut as being lifetime'd
execute as @e[tag=!lifetimeset,tag=!shrinecenter] run tag @s add lifetimeset