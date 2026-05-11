#We set the fireadapt score to the burning_value attribute with fireadapt on it, then multiply it by 20000.
advancement revoke @s only jujutsucraft:utilityach/tookfrostdamage
execute if score @s adaptcooldown matches 1.. run return fail
scoreboard players set @s adaptcooldown 20
execute at @s run summon small_fireball ~ ~2.1 ~ {Motion:[0.0,-1.0,0.0]}
effect give @s minecraft:instant_health 1
