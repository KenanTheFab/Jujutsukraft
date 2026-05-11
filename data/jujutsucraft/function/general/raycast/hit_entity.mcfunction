#If I plan to use this in the future for other abilities I will need to find a better solution, but seeing as only boogie woogie needs this rn it should be fine.
execute as @s[dx=0] run function jujutsucraft:jujutsukaisenathome/boogiewoogie/clearmarked with storage jujutsucraft:identification
#$say $(id)
$scoreboard players set @s markedby $(id)
playsound minecraft:block.trial_spawner.eject_item player @a ~ ~ ~ 1 2