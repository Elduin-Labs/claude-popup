# Puts Claude 3 blocks in front of the player, looking at them.
execute at @s positioned ^ ^ ^3 run summon minecraft:villager ~ ~ ~ {CustomName:{text:"Claude",color:"gold"},CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["claude","claude_new"],VillagerData:{type:"minecraft:plains",profession:"minecraft:nitwit",level:1}}
execute at @s as @e[type=minecraft:villager,tag=claude_new,distance=..6] at @s run tp @s ~ ~ ~ facing entity @p eyes
tag @e[tag=claude_new] remove claude_new
