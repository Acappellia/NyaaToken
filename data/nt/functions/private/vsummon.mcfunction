##called to summon NPC

execute rotated as @p[distance=..10] align xz run teleport @s ~ ~ ~ ~ ~
item replace entity @s weapon.mainhand from entity @p[distance=..10] weapon.mainhand
data modify entity @s VillagerData.profession set from entity @e[type=villager,limit=1,distance=1..,sort=random,tag=!nt_shop] VillagerData.profession
data modify entity @s VillagerData.type set from entity @e[type=villager,limit=1,distance=1..,sort=random,tag=!nt_shop] VillagerData.type