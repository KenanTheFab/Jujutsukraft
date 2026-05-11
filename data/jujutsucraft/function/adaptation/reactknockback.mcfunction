advancement revoke @s only jujutsucraft:utilityach/tookexplosivedmg
execute if score @s adaptcooldown matches 1.. run return fail

execute as @p run execute store result score @s explosiveadapt run attribute @s minecraft:explosion_knockback_resistance modifier value get knockbackadapt 9999
execute as @p run execute as @s store result storage jujutsucraft:adaptations knockval double 0.00011 run scoreboard players get @s knockbackadapt
function jujutsucraft:adaptation/applyadaptations
execute as @s store result storage jujutsucraft:temp blastflipval int -1 run data get storage jujutsucraft:temp blastflipval
execute store result score @s blastflip run data get storage jujutsucraft:temp blastflipval

execute if score @s blastflip matches 0 run return fail
execute as @s if score @s blastflip matches 1 run item modify entity @s armor.chest {function:set_enchantments,enchantments:{blast_protection:1},add:1b}