execute as @a run scoreboard players add @p cyclecooldown 1
# Probably not the most efficient and I'll redo this entire system in the future hopefully,
# but we run this separate from the function checkability so you can use your abilities and cycle, 
# without the cooldown from one affecting the other.
# This is for mainhand items.

# Toggle RCT on and off
execute as @s if items entity @s weapon.mainhand *[minecraft:custom_data~{rctoff:true}] run execute if score @p cyclecooldown matches ..0 as @s run execute if score @s cursedenergy matches 1000.. run function jujutsucraft:jujutsukaisenathome/general/rcton
execute as @s if items entity @s weapon.mainhand *[minecraft:custom_data~{rcton:true}] run execute if score @p cyclecooldown matches ..0 as @s run function jujutsucraft:jujutsukaisenathome/general/rctoff

execute as @a if score @p cyclecooldown matches ..1 run function jujutsucraft:general/resetcyclemain