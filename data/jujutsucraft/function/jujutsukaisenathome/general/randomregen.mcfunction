scoreboard players set @s ceregen 0

#say rolling 0...
#High chance to get tier 0 or 1 regen.
execute if predicate jujutsucraft:rng50 run return run scoreboard players set @s ceregen 0

#say rolling 1...
#High chance to get tier 0 or 1 regen.
execute if predicate jujutsucraft:rng50 run return run scoreboard players set @s ceregen 1

#say rolling 2...
#medium chance to get tier 2 or 3 regen.
execute if predicate jujutsucraft:rng10 run return run scoreboard players set @s ceregen 2

#say rolling 3...
#medium chance to get tier 2 or 3 regen.
execute if predicate jujutsucraft:rng10 run return run scoreboard players set @s ceregen 3

#say rolling 4...
#medium chance to get tier 4 regen.
execute if predicate jujutsucraft:rng10 run return run scoreboard players set @s ceregen 3

#say rolling 5...
#low chance to get tier 5 or 6 regen.
execute if predicate jujutsucraft:rng1 run return run scoreboard players set @s ceregen 5

#say rolling 6...
#low chance to get tier 5 or 6 regen.
execute if predicate jujutsucraft:rng1 run return run scoreboard players set @s ceregen 6

# If you didnt get any of the above then you stay at 0.