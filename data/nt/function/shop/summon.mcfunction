##summon villager

execute if block ~ ~ ~ command_block run return -1

execute align xz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~ ~ {Tags:["nt_shopbase"],Passengers:[{id:"minecraft:villager",Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["nt_shop"],VillagerData:{level:99},Offers:{Recipes:[]},drop_chances:{head:0.0f}}]}
execute as @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] at @s run function nt:private/vsummon
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已生成村民商店","color":"green"}]