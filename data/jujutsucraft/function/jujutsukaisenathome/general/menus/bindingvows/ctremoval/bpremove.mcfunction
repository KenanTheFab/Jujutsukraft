execute if score @s dpconsumedtotal matches 1.. run tellraw @s [{text:"You feel lonely as blood manipulation disappears..."}]
execute if score @s dpconsumedtotal matches ..0 run tellraw @s [{text:"You feel hollow as blood manipulation disappears..."}]
scoreboard players set @s bloodmanipulation 0
scoreboard players add @s cursedenergymax 10000