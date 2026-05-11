say Jujutsucraft pack loaded successfully!
# cooldowns and shit
# Works for base stuff.
scoreboard objectives add abilitycooldowns dummy

# Glorified mana
scoreboard objectives add cursedenergy dummy

# Cooldown for all domains.
scoreboard objectives add domaincooldown dummy

# Cooldown for dismantle
scoreboard objectives add dismantlecooldown dummy

# Cooldown for cursed technique lapse blue
scoreboard objectives add bluecooldown dummy

# Cooldown for cursed technique reversal red
scoreboard objectives add redcooldown dummy

# So you can't spam the most destructive move in the entire pack
scoreboard objectives add purplenukecooldown dummy

# Cooldown for Hollow Technique:Purple
scoreboard objectives add purplecooldown dummy

# Boogie Woogie, super low cooldown but cooldown nonetheless.
scoreboard objectives add boogiewoogiecooldown dummy

# Cooldown for piercing blood is probably less significant than the hp cost lol
scoreboard objectives add piercingcooldown dummy

# Cooldown for piercing blood is probably less significant than the hp cost lol
scoreboard objectives add flowingredscale dummy

# Though it is singular in name, it is intended to be stackable, letting you amp up and up.
scoreboard objectives add blackflash dummy

# Refreshed with each blackflash, but when depleted all black flash stacks disappear
scoreboard objectives add blackflashdur dummy

# To make cycling usable at all.
scoreboard objectives add cyclecooldown dummy

# Players on this scoreboard can... use RCT.
scoreboard objectives add canrct dummy

# Determines if the player is using RCT actively.
scoreboard objectives add usingrct dummy

# Glorified mana.
scoreboard objectives add cursedenergy dummy
scoreboard players add @a cursedenergy 0

# Regenerates up to this point.
scoreboard objectives add cursedenergymax dummy
scoreboard players add @a cursedenergymax 0

# Recovery speed. Preferably would make it a CE efficiency multiplier but either that isn't possible or I would have to redo *so* much shit, so I am opting to just speed up CE recovery.
scoreboard objectives add ceregen dummy

# Fingers eaten. Gives you shrine at a value specified in tick10
scoreboard objectives add fingerconsumed dummy

# Brothers consumed. Will only be 0-3 as it is used to possibly upgrade CE recovery speed. I love rng.
scoreboard objectives add dpconsumed dummy

# Total amount of DPs consumed, unlocks blood manipulation at 9 paintings.
scoreboard objectives add dpconsumedtotal dummy

# Prevents the alert from playing multiple times.
scoreboard objectives add shrinealert dummy

# Determines if the player is using RCT actively.
scoreboard objectives add givenCT dummy

# Delayed tick stuff, for things I need to trigger frequently but would be too performance intensive to do every tick.
scoreboard objectives add globalTick dummy
scoreboard players add ftick10 globalTick 0
scoreboard players add ftick2 globalTick 0

# every 10 ticks yadda
function jujutsucraft:general/tick10
# 2 tick
function jujutsucraft:general/tick2

# Used for making things disappear after a while, instead of persisting permanently. Will kill subjects with /kill, 
# so it will bypass things like totems of undying., spectator and creative mode. Be careful.
scoreboard objectives add lifetime dummy

# Store some motion. Basically just yoinking it from https://www.youtube.com/watch?v=DaIvJwhcz8Q
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

# After position.
scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

# Shrine alignment. From what I can tell teleporting with relativity isn't really possible so we do this jank.
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy


# Checking speed for the purpose of an easly stop and place
scoreboard objectives add curmotion_x dummy
scoreboard objectives add curmotion_y dummy
scoreboard objectives add curmotion_z dummy

#adaptations. Helps calculations and whatever.
scoreboard objectives add adaptcooldown dummy
scoreboard objectives add fireadapt dummy
scoreboard objectives add explosiveadapt dummy
scoreboard objectives add knockbackadapt dummy
scoreboard objectives add breathadapt dummy
scoreboard objectives add falladapt dummy

#So adaptations only happen every other time.
scoreboard objectives add blastflip dummy
scoreboard players set @a blastflip 1
scoreboard objectives add projflip dummy
scoreboard players set @a projflip 1

#Domain restrictions. Not the best execution probably. UUID[0] is stored here to determine whetever or not a surehit affects the target, and to find out who cast the domain.
scoreboard objectives add shrinesummoner dummy
scoreboard objectives add uvsummoner dummy

# It in the name. Determines how damaged the domain is so we can determine if we should shatter it.
scoreboard objectives add domainhealth dummy

# return players to their pre-domain positions.
scoreboard objectives add precast_x dummy
scoreboard objectives add precast_y dummy
scoreboard objectives add precast_z dummy

# calculating for post calc, used for returning players to their positions.
scoreboard objectives add postcast_x dummy
scoreboard objectives add postcast_y dummy
scoreboard objectives add postcast_z dummy

# what players were in domain range, and will be teleported to the domain.
scoreboard objectives add domainvictim dummy

# ID, so we can differentiate entities like projectiles.
scoreboard objectives add entityid0 dummy
# Set projectile ownership
scoreboard objectives add castedby dummy
# Marked by what BW user. It won't be compatible if multiple BW users mark one player, but alas.
scoreboard objectives add markedby dummy
# Determine what technique the player has to give the correct item(s) when they use the trigger.
# Players can have more than one technique so.
scoreboard objectives add shrine dummy
scoreboard objectives add limitless dummy
scoreboard objectives add boogiewoogie dummy
scoreboard objectives add bloodmanipulation dummy
scoreboard objectives add unlockeddomain dummy

#triggers
scoreboard objectives add cursedtechnique trigger
scoreboard objectives add bvmenu trigger
scoreboard objectives add jjcmenu trigger

#Raycasting (p sure they are unused now but raycasting is a bitch so im not risking removing these)
scoreboard objectives add ray_steps dummy
scoreboard objectives add setrays dummy
scoreboard objectives add raycasting dummy