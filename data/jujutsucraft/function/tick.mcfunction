# move projectiles
execute as @e[tag=dpprojectiles] at @s if block ~ ~ ~ minecraft:air run tp @s ^ ^ ^1

# move items down until they hit ground.
execute as @e[tag=makegrounded] at @s if block ~ ~-2 ~ minecraft:air run tp @s ^ ^-2 ^


#All of this is really a remnanet of when i was just messing around, so it isnt v good or future proof lmao
# move dismantle (and red)
execute as @e[tag=dpprojectilefast,tag=!surehit] at @s run tp @s ^ ^ ^2

# move piercing blood
execute as @e[tag=dpprojectilesuperfast] at @s run tp @s ^ ^ ^3

# Detect dismantle hit
execute as @e[tag=dismantleproj,tag=!surehit] run execute unless score @s shrinesummoner = @n[type=minecraft:player,limit=1] shrinesummoner run execute at @s as @e[tag=!surehit,distance=0.1..2,type=!#jujutsucraft:nonlivingentities] run function jujutsucraft:jujutsukaisenathome/malevolent_shrine/dismantlehit

#dismantle particles
execute as @e[tag=dismantleproj] at @s run particle dust{color:[1.0,1.0,1.0],scale:.3} ~ ~ ~ 0.01 1.1 0.01 0 10 normal

# Detect surehit hit
execute as @e[tag=!dismantleproj,tag=surehit] at @s as @e[tag=!surehit,distance=..1,tag=!dismantleproj,type=!#jujutsucraft:nonlivingentities,tag=!dpprojectiles,tag=!dpprojectilefast,tag=!redproj,tag=!blueproj] run execute unless score @s shrinesummoner = @n[type=minecraft:player,limit=1] shrinesummoner run execute as @s run function jujutsucraft:jujutsukaisenathome/malevolent_shrine/dismantlehit

#moved some particles to tick2 for performance

#§4 Piercing blood particles
execute as @e[tag=piebloproj] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.5} ^ ^2 ^1 0.01 0.01 0.01 1 50 force
execute as @e[tag=piebloproj] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.5} ^ ^2 ^0.5 0.01 0.01 0.01 1 50 force

execute as @e[tag=piebloproj] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.5} ^ ^2 ^ 0.01 0.01 0.01 1 50 force

execute as @e[tag=piebloproj] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.5} ^ ^2 ^-0.5 0.01 0.01 0.01 1 50 force
execute as @e[tag=piebloproj] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.5} ^ ^2 ^-1 0.01 0.01 0.01 1 50 force
execute as @e[tag=piebloproj] run data modify entity @s Rotation set from entity @p Rotation

# Detect piercing blood hit
execute as @e[tag=piebloproj,tag=!surehit] run execute at @s as @e[tag=!surehit,distance=0.1..2,type=!#jujutsucraft:nonlivingentities] run function jujutsucraft:jujutsukaisenathome/bloodmanipulation/bmdamage

#§5hollow purple nuke 
execute as @e[tag=hollownuke] at @s run particle minecraft:reverse_portal ~ ~ ~ 1 1 1 0.1 100 force
execute as @e[tag=hollownuke] at @s run particle flash{color:[0.502,0.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 3 force
execute as @e[tag=hollownuke] at @s run particle dust{color:[1.000,0.000,1.000],scale:4} ^2 ^ ^ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=hollownuke] at @s run particle dust{color:[1.000,0.000,1.000],scale:4} ^4 ^ ^ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=hollownuke] at @s run tp @s ~ ~ ~ ~50 ~

#§4 Reversal Red projectile particle.
execute as @e[tag=redproj] at @s run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~2 ~ 0.1 0.1 0.1 1 25 force
execute as @e[tag=redproj] run data modify entity @s Rotation set from entity @p Rotation

# Effect when close to a blueproj. Nine Ropes. Polarized Light. Crow and Declaration. Between Front and Back.
execute as @e[tag=redproj] at @s as @e[distance=..2,tag=blueproj] run function jujutsucraft:jujutsukaisenathome/infinity/hollownuke/purplenuke

#§4 Effect when entity is too close.
execute as @e[tag=redproj] at @s as @e[distance=..3,type=!#jujutsucraft:nonlivingentities,tag=!dismantleproj,tag=!surehit] run summon minecraft:breeze_wind_charge ~ ~5 ~ {Motion:[0.0,-5.0,0.0]}
execute as @e[tag=redproj] at @s as @e[distance=..3,type=!#jujutsucraft:nonlivingentities,tag=!dismantleproj,tag=!surehit] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"destroyme"}

#§3 Lapse blue
execute as @e[tag=blueproj] at @s run particle minecraft:sonic_boom ~ ~ ~ 0.2 0.25 0.2 0.001 10 force

#§3 Handles pulling and stuff
execute as @e[tag=blueproj] at @s run function jujutsucraft:jujutsukaisenathome/infinity/bluepull/pull
execute as @e[tag=pulled] unless predicate jujutsucraft:riding run tag @s remove pulled

#§3 If the blue caster crouches, teleport to the bluepull projectile
execute as @e[tag=blueproj] at @s if score @p[sort=furthest,limit=1] entityid0 = @s castedby run execute as @p[sort=furthest,limit=1] run function jujutsucraft:jujutsukaisenathome/infinity/bluepull/teleporttoblue
#Makes the armor stand face the nearest lapse blue then teleport towards it as if pulled. If I wanted to make it cleaner I would make it gradually pull harder and harder.
execute as @e[tag=bluepull] at @s run tp @s ~ ~ ~ facing entity @e[tag=blueproj,sort=nearest,limit=1]
execute as @e[tag=bluepull] at @e[tag=bluepull,sort=nearest,limit=1] if block ^ ^ ^4 minecraft:air run tp @s ^ ^ ^4 ~ ~
execute as @e[tag=bluepull] at @s unless entity @e[distance=..12,tag=blueproj] run kill @s

#cleanup
kill @e[name=destroyme]

#set the delayed tick thingy to "true" basically.
scoreboard players set ftick10 globalTick 1
scoreboard players set ftick2 globalTick 1

#cooldown reduction
execute as @a run function jujutsucraft:general/reducecooldown

# falling block projectile calcs
execute as @e[tag=dpblockgun,tag=!blockflying] at @s rotated as @p run function jujutsucraft:blocklauncher/addvelocity
# slow down
execute as @e[tag=blueproj,tag=!launchedblue] at @s rotated as @p run function jujutsucraft:jujutsukaisenathome/infinity/bluemovement

#Time takes all.
execute as @e[scores={lifetime=-1..}] run scoreboard players remove @s lifetime 1

# Hijack lifetime for some timer functions. We check for 5 or below for safety.
execute as @e[scores={lifetime=..5},tag=hollownuke] run function jujutsucraft:jujutsukaisenathome/infinity/hollownuke/detonatenuke

# Kill "expired" entities.
execute as @e[scores={lifetime=..1}] run kill @s

# Sukuna finger stuff.
execute as @a run scoreboard players add @s fingerconsumed 0
execute as @a run scoreboard players add @s shrinealert 0

#assume dismantle hit something and make it go boom
execute as @e[tag=dismantlehit] unless predicate jujutsucraft:riding run execute at @s run function jujutsucraft:jujutsukaisenathome/malevolent_shrine/dismantlehit

# Get the health of the domain to determine if it should shatter or not.
execute as @e[tag=uvcenter] store result score @s domainhealth run data get entity @s Health

#Destroy domain, and only erase blocks that are used in the domain's structure.
execute as @e[tag=uvcenter] if score @s domainhealth matches ..950 run execute at @s run fill ~14 ~14 ~14 ~-14 ~-14 ~-14 air replace minecraft:obsidian
execute as @e[tag=uvcenter] if score @s domainhealth matches ..950 run execute at @s run fill ~14 ~14 ~14 ~-14 ~-14 ~-14 air replace minecraft:crying_obsidian
execute as @e[tag=uvcenter] if score @s domainhealth matches ..950 run execute at @s run fill ~14 ~14 ~14 ~-14 ~-14 ~-14 air replace minecraft:black_concrete
execute as @e[tag=uvcenter] if score @s domainhealth matches ..950 run execute at @s run fill ~14 ~14 ~14 ~-14 ~-14 ~-14 air replace minecraft:black_concrete_powder
execute as @e[tag=uvcenter] if score @s domainhealth matches ..950 run execute at @s run fill ~14 ~14 ~14 ~-14 ~-14 ~-14 air replace minecraft:barrier

# return people within destroyed domains to the ground
execute as @e[scores={domainvictim=..1}] at @s if entity @e[tag=uvcenter,scores={domainhealth=..950},distance=..10] run tp ~ ~-196 ~
#Return AI to special cases
execute as @e[scores={domainvictim=..1},type=minecraft:creeper] run data merge entity @s {NoAI:0b}
execute as @e[scores={domainvictim=..1},type=minecraft:ender_dragon] run data merge entity @s {NoAI:0b}
execute as @e[scores={domainvictim=..1},type=minecraft:enderman] run data merge entity @s {NoAI:0b}

execute as @e[scores={domainvictim=..1}] run execute if entity @e[tag=uvcenter,distance=..10] run scoreboard players remove @s domainvictim 1

#Destroy domain
execute as @e[tag=uvcenter] if score @s domainhealth matches ..950 run scoreboard players set @s domainhealth 1
execute as @e[tag=uvcenter] if score @s domainhealth matches ..950 run scoreboard players remove @e domainvictim 1
execute as @e[scores={domainvictim=..-1}] run scoreboard players reset @e domainvictim
#Burnout, lasts a little over two minutes.
execute as @e[tag=uvcenter,scores={domainhealth=..950}] run execute at @e[type=minecraft:player,scores={uvsummoner=10..},sort=random] as @n[type=minecraft:player,distance=..1] run scoreboard players set @s abilitycooldowns 3000
execute as @e[tag=uvcenter,scores={domainhealth=..950}] run execute at @e[type=minecraft:player,scores={uvsummoner=10..},sort=random] if score @n uvsummoner = @s uvsummoner run scoreboard players reset @n uvsummoner
execute as @e[tag=uvcenter,scores={domainhealth=..950}] run execute at @e[type=minecraft:player,scores={uvsummoner=10..},sort=random] as @n[type=minecraft:player,distance=..1] run function jujutsucraft:jujutsukaisenathome/general/burnoutalert25
execute as @e[tag=uvcenter] if score @s domainhealth matches ..10 run kill @s

execute unless entity @e[tag=shrinecenter] run schedule clear jujutsucraft:jujutsukaisenathome/malevolent_shrine/surehit
#massive burnout compared to UV, as a tradeoff of having no up-front cost. 5 minutes.
execute as @e[tag=shrinecenter,scores={lifetime=..3}] run execute at @e[type=minecraft:player,scores={shrinesummoner=10..},sort=random] as @n[type=minecraft:player,distance=..1] run scoreboard players set @s abilitycooldowns 6000
execute as @e[tag=shrinecenter,scores={lifetime=..3}] run execute at @e[type=minecraft:player,scores={shrinesummoner=10..},sort=random] as @n[type=minecraft:player,distance=..1] run function jujutsucraft:jujutsukaisenathome/general/burnoutalert5
execute as @e[tag=shrinecenter,scores={lifetime=..3}] run execute at @e[type=minecraft:player,scores={shrinesummoner=10..},sort=random] if score @n shrinesummoner = @s shrinesummoner run scoreboard players reset @n shrinesummoner

# hollow technique: purple!
# Makes a hole as it travels.
execute at @e[tag=purpleproj] run place template jujutsucraft:carve5 ~-2 ~-2 ~-2
execute as @e[tag=purpleproj] at @s run particle flash{color:[0.502,0.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 3 force

# cursed energy regen and display (in tick10)
execute as @a run scoreboard players add @s cursedenergymax 0
execute as @a run scoreboard players add @s ceregen 0
execute as @a unless score @s cursedenergy >= @s cursedenergymax run execute if score @s ceregen matches 0 run scoreboard players add @s cursedenergy 1
execute as @a unless score @s cursedenergy >= @s cursedenergymax run execute if score @s ceregen matches 1 run scoreboard players add @s cursedenergy 5
execute as @a unless score @s cursedenergy >= @s cursedenergymax run execute if score @s ceregen matches 2 run scoreboard players add @s cursedenergy 10
execute as @a unless score @s cursedenergy >= @s cursedenergymax run execute if score @s ceregen matches 3 run scoreboard players add @s cursedenergy 15
execute as @a unless score @s cursedenergy >= @s cursedenergymax run execute if score @s ceregen matches 4 run scoreboard players add @s cursedenergy 20
execute as @a unless score @s cursedenergy >= @s cursedenergymax run execute if score @s ceregen matches 5 run scoreboard players add @s cursedenergy 25
execute as @a unless score @s cursedenergy >= @s cursedenergymax run execute if score @s ceregen matches 6 run scoreboard players add @s cursedenergy 30


# RCT stuff. Unfortunantly the game thinks *not* being on the scoreboard counts as having infinite points or smth.
execute as @a run scoreboard players add @s canrct 0
execute as @a run scoreboard players add @s usingrct 0

# Spin the wheel of birth rng
execute as @a run scoreboard players add @s givenCT 0
execute as @a[scores={givenCT=..0}] run function jujutsucraft:jujutsukaisenathome/general/randomtechnique

execute as @a if score @s usingrct matches 1 run function jujutsucraft:jujutsukaisenathome/general/rct

#Trigger stuff
execute as @a[scores={cursedtechnique=1..}] at @s run function jujutsucraft:jujutsukaisenathome/general/givetechnique
scoreboard players enable @a cursedtechnique

execute as @a[scores={bvmenu=1..}] at @s run function jujutsucraft:jujutsukaisenathome/general/menus/showbvmenu
scoreboard players enable @a bvmenu

execute as @a[scores={jjcmenu=1..}] at @s run function jujutsucraft:jujutsukaisenathome/general/menus/showoptionsmenu
scoreboard players enable @a jjcmenu

execute as @e[scores={raycasting=1}] at @s run function jujutsucraft:general/raycast/setupcast
