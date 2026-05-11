$summon falling_block ~ ~ ~0.5  {BlockState:{Name:$(block)},Tags:["dpblockgun"]}
execute as @n[tag=launchedblock] run data modify entity @s Rotation set from entity @p Rotation
