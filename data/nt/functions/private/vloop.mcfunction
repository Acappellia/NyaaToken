##npc loop

execute as @e[type=villager,tag=nt_shop] at @s run function nt:private/vreset
schedule function nt:private/vloop 2t replace