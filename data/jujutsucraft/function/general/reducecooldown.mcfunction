#execute as @a[tag=aCooldown] unless score @p[tag=aCooldown] abilitycooldowns matches ..0 run scoreboard players remove @p abilitycooldowns 1
#execute as @a[tag=aCooldown] if score @p abilitycooldowns matches ..0 run execute as @s run function deitypack:general/resetrightclick

#Base cooldown, used for mostly preventing spamming right click.
scoreboard players remove @s abilitycooldowns 1
execute as @s if score @s abilitycooldowns matches 0 run advancement revoke @s only jujutsucraft:utilityach/cosiright_click

# Ensure the adaptations can't trigger too frequently.
scoreboard players remove @s adaptcooldown 1

# When this is 0 we fully reset it, no matter how many stacks.
scoreboard players remove @s blackflashdur 1
execute as @s if score @s blackflashdur matches 0 run scoreboard players set @s blackflash 0

scoreboard players remove @s bluecooldown 1

scoreboard players remove @s redcooldown 1

scoreboard players remove @s purplecooldown 1

scoreboard players remove @s purplenukecooldown 1

scoreboard players remove @s dismantlecooldown 1

scoreboard players remove @s boogiewoogiecooldown 1

scoreboard players remove @s piercingcooldown 1

scoreboard players remove @s domaincooldown 1

scoreboard players remove @s cyclecooldown 1
execute as @s if score @s cyclecooldown matches 0 run advancement revoke @s only jujutsucraft:utilityach/maincycle_rightclick
execute as @s if score @s cyclecooldown matches 0 run advancement revoke @s only jujutsucraft:utilityach/offcycle_rightclick