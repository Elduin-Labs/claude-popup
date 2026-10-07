# Runs once for each player, the first time they join a world.
playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 1 0.6
title @s times 10 60 20
title @s subtitle {text:"I popped in!",color:"gray"}
title @s title {text:"Claude is here",color:"gold",bold:true}
tellraw @s {text:"<Claude> Boo! Did I scare you?"}
execute at @s positioned ^ ^ ^3 run summon minecraft:villager ~ ~ ~ {CustomName:{text:"Claude",color:"gold"},CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["claude_new"],VillagerData:{type:"minecraft:plains",profession:"minecraft:nitwit",level:1}}
execute at @s as @e[type=minecraft:villager,tag=claude_new,distance=..6] at @s run tp @s ~ ~ ~ facing entity @p eyes
tag @e[tag=claude_new] remove claude_new
