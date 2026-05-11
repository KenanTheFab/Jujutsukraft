#We set the fireadapt score to the burning_value attribute with fireadapt on it, then multiply it by 20000.
advancement revoke @s only jujutsucraft:utilityach/tookfiredamage
execute if score @s adaptcooldown matches 1.. run return fail

#note to self, the value is 9999 at the time of writing this. it works. try not to change it, self.
execute as @p run execute store result score @s fireadapt run attribute @s minecraft:burning_time modifier value get fireadapt 9999
#We then take the result and put it into storage, multiplying it by 0.0001 (effectively dividing it back to a lower value. yes it is confusing.)
# In this case the value should go from 0.1 to 0.2
#note to self, the value is 0.00011 at the time of writing this. it works. try not to change it, self.
execute as @p run execute as @s store result storage jujutsucraft:adaptations burnval double 0.00011 run scoreboard players get @s fireadapt
#Pass the value from the storage (calculated above) and into the macro adaptfire which will then set the burning_value attribute with the fireadapt ID to the number.
# IE, if the chestplate had a burn time value of -10% it would be 0.1, we put that into the scoreboard multiplied by 20000 for 2000
# and then we multiply it by 0.0001 to turn that 2000 into 0.2- or -20% burn time.
function jujutsucraft:adaptation/applyadaptations
execute if block ~ ~1 ~ air run fill ~ ~1 ~ ~ ~1 ~ minecraft:powder_snow
effect give @s minecraft:fire_resistance 5