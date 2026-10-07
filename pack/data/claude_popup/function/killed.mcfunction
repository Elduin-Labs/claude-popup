# A player just killed Claude. Come back in 3 seconds.
advancement revoke @s only claude_popup:killed_claude
tag @s add claude_revive
schedule function claude_popup:come_back 60t
