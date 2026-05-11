execute at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1 0
execute unless predicate jujutsucraft:issneaking run return fail
summon armor_stand ~ ~ ~ {Tags:["swapplaceholder"],Invisible:1b,NoGravity:1b}
execute rotated as @s run tp @e[tag=swapplaceholder,limit=1,sort=nearest] ~ ~ ~
execute as @s if score @s entityid0 = @e[scores={markedby=1..},limit=1] markedby run execute rotated as @s run tp @s @e[scores={markedby=1..},limit=1]
execute rotated as @e[tag=swapplaceholder,limit=1,sort=nearest] run tp @e[scores={markedby=1..},limit=1,sort=nearest] @e[tag=swapplaceholder,limit=1,sort=nearest]
scoreboard players remove @s cursedenergy 15
kill @e[tag=swapplaceholder]