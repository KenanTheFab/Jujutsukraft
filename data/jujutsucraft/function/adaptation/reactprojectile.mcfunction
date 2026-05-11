advancement revoke @s only jujutsucraft:utilityach/tookprojectiledmg
execute if score @s adaptcooldown matches 1.. run return fail
scoreboard players set @s adaptcooldown 300
execute as @s if score @s projflip matches 1 run item modify entity @s armor.chest {function:set_enchantments,enchantments:{projectile_protection:1},add:1b}
execute as @s store result storage jujutsucraft:temp projflipval int -1 run data get storage jujutsucraft:temp projflipval
execute store result score @s projflip run data get storage jujutsucraft:temp projflipval
