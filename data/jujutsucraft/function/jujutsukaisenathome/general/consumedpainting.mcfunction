# Keep count of death paintings. If you get 3 you spin the dice on increasing your CE regeneration.
scoreboard players add @s dpconsumed 1
# If the player has consumed 3 death paintings we give them +1 CEregen at a 100% chance if they are at tier 0. tier 1 is technically "default" prior to adding other tiers.
execute if score @s dpconsumed matches 3 run execute if score @s ceregen matches 0 run scoreboard players add @s ceregen 1

# same as above but if they are tier 1-2 then we give the player a 10% chance to increase their painting further.
execute if score @s dpconsumed matches 3 run execute if predicate jujutsucraft:rng10 run execute if score @s ceregen matches 1..2 run scoreboard players add @s ceregen 1

# same as above but if they are tier 1-2 then we give the player a 1% chance to increase their painting further, up to the max of tier 6.
execute if score @s dpconsumed matches 3 if predicate jujutsucraft:rng1 run execute if score @s ceregen matches 3..5 run scoreboard players add @s ceregen 1

#Reset the process after all the checks.
execute if score @s dpconsumed matches 3 run scoreboard players set @s dpconsumed 0


# Used to give blood manipulation at 9 paintings.
scoreboard players add @s dpconsumedtotal 1
execute if score @s dpconsumedtotal matches 9.. run advancement grant @s only jujutsucraft:eatdp9

advancement revoke @s only jujutsucraft:eatdps
