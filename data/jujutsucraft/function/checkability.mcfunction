execute as @a run scoreboard players add @p abilitycooldowns 1
execute store result storage jujutsucraft:identification id double 1 run scoreboard players get @s entityid0
#it is "check ability", not "checkability".

#Yes, these are insane chains of checks. No I will not change this.

#Shrine
# check if the weapon allows the user to send dismantles. yes this is jjk but minecraft. bite me.
execute as @s if items entity @s weapon *[minecraft:custom_data~{sukuna:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p dismantlecooldown matches ..1 run execute if score @p shrine matches 1.. run function jujutsucraft:jujutsukaisenathome/malevolent_shrine/tntdismantle

#Blood Manipulation
# check if the weapon allows the user to send dismantles. yes this is jjk but minecraft. bite me.
execute as @s if items entity @s weapon *[minecraft:custom_data~{piercingblood:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p piercingcooldown matches ..1 run execute if score @p bloodmanipulation matches 1.. run function jujutsucraft:jujutsukaisenathome/bloodmanipulation/piercingblood

#Limitless
# check if the weapon allows the user to send reds. yes this is jjk but minecraft. bite me.
execute as @s if items entity @s weapon *[minecraft:custom_data~{gojored:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p limitless matches 1.. run execute if score @p redcooldown matches ..1 run function jujutsucraft:jujutsukaisenathome/infinity/red

# check if the weapon allows the user to send purples. yes this is jjk but minecraft. bite me.
execute as @s if items entity @s weapon *[minecraft:custom_data~{gojopurple:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p limitless matches 1.. if score @p purplecooldown matches ..1 run function jujutsucraft:jujutsukaisenathome/infinity/purple

# check if the weapon allows the user to cast blue. yes this is jjk but minecraft. bite me.
execute as @s if items entity @s weapon *[minecraft:custom_data~{gojoblue:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p limitless matches 1.. if score @p bluecooldown matches ..1 run function jujutsucraft:jujutsukaisenathome/infinity/blue with storage jujutsucraft:identification

#Unlimited Void DE toggles
# check if the weapon allows the user to open domains. yes this is jjk but minecraft. bite me.
execute as @s if items entity @s weapon *[minecraft:custom_data~{domaintoggle:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p domaincooldown matches ..1 run function jujutsucraft:jujutsukaisenathome/infinity/opendomain
execute as @s if items entity @s weapon *[minecraft:custom_data~{domaintoggle:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p uvsummoner matches 1.. run function jujutsucraft:jujutsukaisenathome/infinity/closedomain

# Open Malevolent Shrine. It can't be closed, so we don't worry about that.
execute as @s if items entity @s weapon *[minecraft:custom_data~{domainopenms:true}] run execute if score @p abilitycooldowns matches ..1 run function jujutsucraft:jujutsukaisenathome/malevolent_shrine/opendomain

#Boogie Woogie!
execute as @s if items entity @s weapon *[minecraft:custom_data~{boogiewoogie:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p boogiewoogie matches 1.. run execute if score @p boogiewoogiecooldown matches ..1 run function jujutsucraft:jujutsukaisenathome/boogiewoogie/swap
#Boogie Woogie!
execute as @s if items entity @s weapon *[minecraft:custom_data~{boogiewoogie:true}] run execute if score @p abilitycooldowns matches ..1 run execute if score @p boogiewoogiecooldown matches ..1 run execute if score @p boogiewoogie matches 1.. run function jujutsucraft:jujutsukaisenathome/boogiewoogie/markboogiewoogietarget



execute as @a if score @p abilitycooldowns matches ..1 run function jujutsucraft:general/resetrightclick
#execute as @s run say running ability checked