execute as @a run scoreboard players add @p cyclecooldown 1
# Probably not the most efficient and I'll redo this entire system in the future hopefully,
# but we run this separate from the function checkability so you can use your abilities and cycle, 
# without the cooldown from one affecting the other.
# This is for offhand items.

# Cycle abilities for limitless
execute as @s if items entity @s weapon.offhand *[minecraft:custom_data~{gojored:true}] run execute if score @p cyclecooldown matches ..0 as @s run function jujutsucraft:jujutsukaisenathome/infinity/cycle/blue

#We block switching if the player hasnt unlocked RCT yet. We just need to make sure the player gets blue enchanted items first.
execute as @s if items entity @s weapon.offhand *[minecraft:custom_data~{gojoblue:true}] run execute if score @p cyclecooldown matches ..0 as @s run execute if score @p canrct matches 1 as @s run function jujutsucraft:jujutsukaisenathome/infinity/cycle/purple

execute as @s if items entity @s weapon.offhand *[minecraft:custom_data~{gojopurple:true}] run execute if score @p cyclecooldown matches ..0 as @s run function jujutsucraft:jujutsukaisenathome/infinity/cycle/red

execute as @a if score @p cyclecooldown matches ..1 run function jujutsucraft:general/resetcycleoff