scoreboard players set @s cursedenergymax 0

#say rolling 0...
#Low chance to start off without any form of cursed energy. Might link to some sort of heavenly restriction in the future.
execute if predicate jujutsucraft:rng1 run return run scoreboard players set @s cursedenergymax 0

#say rolling 1...
#HDecent chance to roll 1000 cursed energy, basically "default"
execute if predicate jujutsucraft:rng50 run return run scoreboard players set @s cursedenergymax 1000

#say rolling 2...
#low chance to start off with anything higher than 1k or 4k CE, basically in a more "extraordinary" class
execute if predicate jujutsucraft:rng50 run return run scoreboard players set @s cursedenergymax 4000

#say rolling 3...
# Extraordinary CE max to start off with.
execute if predicate jujutsucraft:rng10 run return run scoreboard players set @s cursedenergymax 6000

#say rolling 4...
# Born with high potential.
execute if predicate jujutsucraft:rng10 run return run scoreboard players set @s cursedenergymax 10000

#say rolling 5...
# Blessed.
execute if predicate jujutsucraft:rng1 run return run scoreboard players set @s cursedenergymax 40000

scoreboard players set @s cursedenergymax 1000
# If you didnt get any of the above rhen we start the player off with a simple 1k reserve.