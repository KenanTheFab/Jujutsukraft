advancement revoke @s only jujutsucraft:utilityach/tookfalldamage
execute if score @s adaptcooldown matches 1.. run return fail
execute as @p run execute store result score @s falladapt run attribute @s minecraft:safe_fall_distance modifier value get falladapt 9999
execute as @p run execute as @s store result storage jujutsucraft:adaptations fallval double 0.00021 run scoreboard players get @s falladapt
function jujutsucraft:adaptation/applyadaptations