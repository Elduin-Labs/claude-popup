# Runs once for each player, the first time they join a world.
playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 1 0.6
title @s times 10 60 20
title @s subtitle {text:"I popped in!",color:"gray"}
title @s title {text:"Claude is here",color:"gold",bold:true}
tellraw @s {text:"<Claude> Boo! Did I scare you?"}
function claude_popup:spawn_claude
