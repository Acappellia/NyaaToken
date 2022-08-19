execute rotated as @p[distance=..10] align xz run teleport @s ~0.5 ~ ~0.5 ~ ~
execute store result score @s nt_vshop_x run data get entity @s Pos[0]
execute store result score @s nt_vshop_y run data get entity @s Pos[1]
execute store result score @s nt_vshop_z run data get entity @s Pos[2]
item replace entity @s weapon.mainhand from entity @p[distance=..10] weapon.mainhand
data modify entity @s VillagerData.profession set from entity @e[type=villager,limit=1,distance=1..,sort=random,tag=!nt_shop] VillagerData.profession
data modify entity @s VillagerData.type set from entity @e[type=villager,limit=1,distance=1..,sort=random,tag=!nt_shop] VillagerData.type