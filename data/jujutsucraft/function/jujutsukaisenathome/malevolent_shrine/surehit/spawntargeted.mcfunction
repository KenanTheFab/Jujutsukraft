#scoreboard players set @e[scores={shrinesummoner=..109},sort=random,limit=1] shrinesummoner 0
execute at @e[type=!minecraft:experience_orb,type=!minecraft:block_display,tag=!surehit,type=!minecraft:area_effect_cloud,scores={shrinesummoner=..100}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["surehit","targeted"],Name:["surehit cut"]}
#Kills the slice after 20 ticks, or 1 second.
scoreboard players add @e[tag=targeted,tag=!lifetimeset,tag=!shrinecenter] lifetime 10
#Mark the cut as being lifetime'd
execute as @e[tag=!lifetimeset,tag=!shrinecenter] run tag @s add lifetimeset
