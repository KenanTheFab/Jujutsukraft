scoreboard players set ftick2 globalTick 0

#surehit particles
execute as @e[tag=!dismantleproj,tag=surehit] at @s run particle dust{color:[1.0,1.0,1.0],scale:0.6} ~ ~ ~ 0.01 1.1 0.01 0 20 force
execute as @e[tag=!dismantleproj,tag=surehit] at @s run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0.01 1.1 0.01 0 25 force

#if no shrine, ensure no surehit
execute unless entity @e[tag=shrinecenter,limit=1] run schedule clear jujutsucraft:jujutsukaisenathome/malevolent_shrine/surehit

execute at @e[name=trial] run particle minecraft:trial_spawner_detection ~ ~4 ~ .1 .1 .1 .01 2
execute at @e[name=trialomen] run particle minecraft:trial_spawner_detection_ominous ~ ~4 ~ .1 .1 .1 .01 2

execute at @e[name=heart] run particle minecraft:heart ~ ~4 ~ .1 .1 .1 .01 1

execute at @e[name=rain] run particle minecraft:rain ~ ~4 ~ .01 .01 .01 .01 4

#Kill if nobody is riding it
execute as @e[tag=bluepull] unless predicate jujutsucraft:carrying run kill @s
#execute as @e[tag=bluepull] unless entity @e[limit=1,tag=blueproj] run kill @e[tag=bluepull]

# Heavy damage to everything within purple range.
execute at @e[tag=purpleproj] as @e[distance=..4] unless score @e[tag=purpleproj,limit=1,sort=nearest] castedby = @s entityid0 run damage @s 10 minecraft:player_attack
# Prevent "sharing" CTs
execute as @e[type=item] if items entity @s contents *[minecraft:custom_data~{ct:1b}] run kill @s

schedule function jujutsucraft:general/tick2 2t
