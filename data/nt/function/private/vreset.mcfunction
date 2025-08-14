##called to reset Villager position

#TODO try solving the problem that villager turn into a witch, 
#maybe use storage to backup trades - failed: villagers lost tags and scores when turning into a witch
#is there another ways to keep track with the npc?

data modify entity @s CustomName set from entity @s equipment.mainhand.components."minecraft:custom_name"
data modify entity @s PortalCooldown set value 300

execute unless entity @p[distance=..5,gamemode=!spectator] run return 1

summon marker ~ ~ ~ {Tags:["v_reset_tmp"]}
execute anchored eyes facing entity @p[distance=..5,gamemode=!spectator] eyes run tp @n[type=marker,distance=..1,tag=v_reset_tmp] ~ ~ ~ ~ ~
data modify entity @s Rotation set from entity @n[type=marker,distance=..3,tag=v_reset_tmp] Rotation
kill @n[type=marker,distance=..3,tag=v_reset_tmp]