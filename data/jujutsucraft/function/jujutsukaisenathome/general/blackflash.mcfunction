execute unless predicate jujutsucraft:rng1 run return fail
# adds +1 to the blackflash count, and refreshes the duration back to 1 minute. 20 ticks * 60s = 1200. i love minecraft.
scoreboard players add @s blackflash 1
scoreboard players set @s blackflashdur 1200
#
#Gives 1k CE (can go above max)
scoreboard players add @s cursedenergy 1000
#
#Refreshes cooldowns
scoreboard players set @s abilitycooldowns 1
scoreboard players set @s bluecooldown 1
scoreboard players set @s redcooldown 1
scoreboard players set @s purplecooldown 1
scoreboard players set @s boogiewoogiecooldown 1
scoreboard players set @s piercingcooldown 1
scoreboard players remove @s dismantlecooldown 1
#
execute as @s if score @s abilitycooldowns matches 0 run advancement revoke @s only jujutsucraft:utilityach/cosiright_click
# I really hate how much of a roundabout way i have to do this.
#Gives a potion effect (strength) with an amplifier based on the BF stack. Seems to bug out at around 15 and resets to just 1 but given the chance of hitting a single BF is 0.01/1% i dont think it will be a problem.
execute store result storage jjk:effects lvl int 1 run scoreboard players get @s blackflash
data modify storage jjk:effects dur set value 60
data modify storage jjk:effects effect set value "strength"
function jujutsucraft:general/effect with storage jjk:effects
#Fanciness
playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~
playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^1 .5 .5 .5 10 100
particle block{block_state:"black_concrete"} ^ ^1 ^1 .5 .5 .5 10 100
#
title @s times 0 20 10
title @s actionbar [{"text":"BLACK FLASH!","bold":true,"color":"black","shadow_color":-65536}]
advancement grant @s only jujutsucraft:blackflash