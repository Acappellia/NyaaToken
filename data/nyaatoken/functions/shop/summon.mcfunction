summon villager ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["nt_shop"]}
execute as @p[distance=..10] at @s rotated as @s align xz run teleport @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] ~0.5 ~ ~0.5 ~ ~
item replace entity @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] weapon.mainhand from entity @p[distance=..10] weapon.mainhand
data modify entity @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] VillagerData.profession set from entity @e[type=villager,limit=1,sort=random] VillagerData.profession
data modify entity @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] VillagerData.type set from entity @e[type=villager,limit=1,sort=random] VillagerData.type
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已生成村民商店","color":"green"}]