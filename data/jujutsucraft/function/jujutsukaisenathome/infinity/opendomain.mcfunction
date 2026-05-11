item modify entity @s weapon.mainhand jujutsucraft:domainclose
execute unless score @s cursedenergy matches 10000.. run return fail
execute unless score @s domaincooldown matches ..1 run return fail
# We get the player's UUID, aka, caster
execute store result score @s uvsummoner run data get entity @s UUID[0]
#Spawn the core of the domain, allowing it to be broken. We set the health to an absurd number like 1024 (max minecraft allows) because an insta kill will bug out the shattering code and cause the domain to persist.
# in reality it has a health of 74, as the domain shatters when the health (score) is 950 or below.
# and if the above fails and something somehow deals 1024+ damage in one blow it has the totem of undying.
# /kill will still break it, however.

execute if entity @e[distance=..20,tag=uvcenter,limit=1] run return run say already in a domain!
execute as @e[scores={domainvictim=..1}] run execute if entity @e[tag=uvcenter,distance=..10] run scoreboard players remove @s domainvictim 1
damage @e[distance=..20,type=minecraft:magma_cube,limit=1] 500 minecraft:magic
summon magma_cube ~ ~200 ~ {NoGravity:1b,Silent:1b,Glowing:1b,NoAI:1b,PersistenceRequired:1b,Tags:["uvcenter"],equipment:{head:{id:"minecraft:totem_of_undying",count:1},mainhand:{id:"minecraft:totem_of_undying",count:1}},drop_chances:{head:0.000,mainhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:scale",base:1.2}]}
#Set the domain's score to that of the player so it knows who summoned it.
execute store result score @e[tag=uvcenter] uvsummoner run data get entity @s UUID[0]
# Spawn the UV structure/sphere, adjusted so that the core is in the middle.
execute at @e[tag=uvcenter] run place template jujutsucraft:unlimited_void ~-15 ~-15 ~-13
# Help it passively repair/recover.
effect give @e[tag=uvcenter] minecraft:regeneration infinite 2
# Entities within [distance] blocks of the caster will get marked and be dragged into the domain. Marks the player who casted it too but we deal with that later.
execute as @e[distance=..20,tag=!uvcenter] run scoreboard players set @s domainvictim 1

# tp all the victims
tp @s @e[limit=1,tag=uvcenter,sort=nearest]
tp @e[scores={domainvictim=1..},tag=!uvcenter] @e[limit=1,tag=uvcenter,sort=nearest]
execute at @n[tag=uvcenter,limit=1] as @e[distance=..20] run playsound minecraft:entity.creaking.attack block @s ~ ~ ~ 1 1
#unmark the caster as a victim.
scoreboard players remove @s domainvictim 1
#apply cooldowns and CE drain
scoreboard players set @s abilitycooldowns 20
scoreboard players set @s domaincooldown 1200
#Cost is slightly higher than the needed for summoning the domain.
scoreboard players remove @s cursedenergy 12000
# Debuff mobs for 5 minutes.
execute at @s run execute as @e[scores={domainvictim=1..},type=!minecraft:player] run effect give @s slowness 300 255
execute as @e[scores={domainvictim=1..},type=!minecraft:player] run effect give @s minecraft:blindness 300 255
execute as @e[scores={domainvictim=1..},type=!minecraft:player] run effect give @s minecraft:mining_fatigue 300 255
execute as @e[scores={domainvictim=1..},type=!minecraft:player] run effect give @s minecraft:weakness 300 255
execute as @e[scores={domainvictim=1..},type=!minecraft:player] run effect give @s minecraft:poison 300 255
execute as @e[scores={domainvictim=1..},type=minecraft:creeper] run data merge entity @s {NoAI:1b}
execute as @e[scores={domainvictim=1..},type=minecraft:ender_dragon] run data merge entity @s {NoAI:1b}
execute as @e[scores={domainvictim=1..},type=minecraft:enderman] run data merge entity @s {NoAI:1b}
execute as @e[scores={domainvictim=1..},type=minecraft:skeleton] run data merge entity @s {NoAI:1b}

# Debuff players for 30s
execute as @e[scores={domainvictim=1..},type=minecraft:player] run effect give @s slowness 30 255
execute as @e[scores={domainvictim=1..},type=minecraft:player] run effect give @s minecraft:blindness 30 255
execute as @e[scores={domainvictim=1..},type=minecraft:player] run effect give @s minecraft:mining_fatigue 120 255
execute as @e[scores={domainvictim=1..},type=minecraft:player] run effect give @s minecraft:weakness 30 255
execute as @e[scores={domainvictim=1..},type=minecraft:player] run effect give @s minecraft:poison 30 255