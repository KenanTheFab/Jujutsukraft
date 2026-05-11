advancement revoke @s only jujutsucraft:utilityach/tookbreathdamage
execute if score @s adaptcooldown matches 1.. run return fail

execute as @p run execute store result score @s breathadapt run attribute @s minecraft:oxygen_bonus modifier value get breathadapt 9999
execute as @p run execute as @s store result storage jujutsucraft:adaptations breathval double 0.00011 run scoreboard players get @s breathadapt
function jujutsucraft:adaptation/applyadaptations