execute store result entity @s Pos[0] double 1 run scoreboard players get @s nt_vshop_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s nt_vshop_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s nt_vshop_z
execute at @s run teleport @s ~0.5 ~ ~0.5
execute at @s anchored eyes facing entity @p[distance=..5] eyes run teleport @s ~ ~ ~ ~ ~
data modify entity @s CustomName set from entity @s HandItems[0].tag.display.Name
data modify entity @s PortalCooldown set value 300