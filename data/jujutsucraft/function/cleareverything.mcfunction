#Just completely resets everything, in case something went wrong.
execute as @s run say [Automated message] I ran the clear command, bear with me... 
advancement revoke @a only jujutsucraft:utilityach/cosiright_click
tellraw @a "right click advancement revoked from all players"
function jujutsucraft:load
tellraw @a "Completed reset! Used the load function automatically to re-setup everything."