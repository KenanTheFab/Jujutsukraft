advancement revoke @s only jujutsucraft:eatfingers
# In case the player doesn't have CE yet... somehow.
scoreboard players add @s cursedenergymax 0
scoreboard players add @s cursedenergy 0

# Keep count of fingers. If you get 15 you unlock shrine.
scoreboard players add @s fingerconsumed 1
execute if score @s fingerconsumed matches 15.. run advancement grant @s only jujutsucraft:15fingers
execute if score @s fingerconsumed matches 15.. run function jujutsucraft:jujutsukaisenathome/general/giveatechnique/unlockshrine
execute if score @s fingerconsumed matches 20.. run advancement grant @s only jujutsucraft:20fingers

execute unless score @s fingerconsumed matches 20.. run scoreboard players add @s cursedenergy 500
execute unless score @s fingerconsumed matches 20.. run scoreboard players add @s cursedenergymax 500