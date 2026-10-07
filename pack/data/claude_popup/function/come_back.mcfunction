# Claude comes back to life in front of whoever killed him.
execute as @a[tag=claude_revive] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.6
execute as @a[tag=claude_revive] run tellraw @s {text:"<Claude> I'm back!"}
execute as @a[tag=claude_revive] at @s run function claude_popup:spawn_claude
tag @a remove claude_revive
