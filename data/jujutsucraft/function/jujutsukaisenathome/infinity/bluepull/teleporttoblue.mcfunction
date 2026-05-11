execute as @s unless predicate jujutsucraft:issneaking run execute as @e[tag=blueproj,limit=1] rotated as @s run return fail
execute as @e[tag=blueproj,limit=1] rotated as @s run tp @p ~ ~1 ~
effect give @s minecraft:slow_falling 5 0