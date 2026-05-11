scoreboard players set @s shrine 0
scoreboard players set @s boogiewoogie 0
scoreboard players set @s limitless 0
scoreboard players set @s bloodmanipulation 0
function jujutsucraft:jujutsukaisenathome/general/randomregen
function jujutsucraft:jujutsukaisenathome/general/randomce
scoreboard players set @s givenCT 1

# Extremely high chance to just not get a CT. Sucks to suck.
execute if predicate jujutsucraft:rng10 run return run say no ct

#If the player hits the 1% chance we give stop the loop. Boogiewoogie is the most common CT to "roll"
# Lacks direct offense but has plenty of utility, especially for the early game.
execute if predicate jujutsucraft:rng50 run return run function jujutsucraft:jujutsukaisenathome/general/giveatechnique/unlockboogiewoogie

#If the player hits the 10% chance we give stop the loop. blood manipulation is the second most common CT to "roll"
# More offensive power than boogie woogie, but lacks utility. Fairly weak without RCT as you take damage when using it
execute if predicate jujutsucraft:rng10 run return run function jujutsucraft:jujutsukaisenathome/general/giveatechnique/unlockbloodmanipulation

#say no boogie

#If the player didn't get boogie woogie we keep going and check if the player should get one of the other CTs
#If the player hits the 1% chance we give stop the loop. Shrine is rarer, but lacks any utility aside from being a low cost CT with high DPS, and if unlocked, a powerful DE.
execute if predicate jujutsucraft:rng10 run return run function jujutsucraft:jujutsukaisenathome/general/giveatechnique/unlockshrine

#say no shrine

#If the player hits the 1% chance we give stop the loop. Limitless is the rarest technique to "roll"
# Rarest technique to be "born" with as it gives access to blue which is great for collecting/trapping entities, and
# becomes more powerful over time as the player unlocks RCT which gives access to a powerful  displacement and mobility tool in red
# and purple, carving through any material (including bedrock)
# Highly expensive CT, and will require the player to eat a minimum of 2 fingers to get enough CE just to cast blue (1k CE)
execute if predicate jujutsucraft:rng1 run return run function jujutsucraft:jujutsukaisenathome/general/giveatechnique/unlocklimitless
#say no limitless
#say truly no ct