##called to reset Villager position

#TODO try solving the problem that villager turn into a witch, 
#maybe use storage to backup trades - failed: villagers lost tags and scores when turning into a witch
#is there another ways to keep track with the npc?

execute at @s anchored eyes facing entity @p[distance=..5,gamemode=!spectator] eyes run teleport @s ~ ~ ~ ~ ~
data modify entity @s CustomName set from entity @s HandItems[0].tag.display.Name
data modify entity @s PortalCooldown set value 300