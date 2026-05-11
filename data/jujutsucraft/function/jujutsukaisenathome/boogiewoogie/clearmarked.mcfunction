#Prevents multiple targets at once
$execute as @e if score @s markedby matches $(id) run scoreboard players reset @s markedby