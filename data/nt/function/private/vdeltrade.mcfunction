##called to remove trade from NPC

summon item ~ ~1 ~ {Tags:["nt_trade_copy"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=nt_trade_copy,limit=1,sort=nearest] Item set from entity @s Offers.Recipes[0].buy
tag @e[type=item,tag=nt_trade_copy,limit=1,sort=nearest] remove nt_trade_copy
summon item ~ ~1 ~ {Tags:["nt_trade_copy"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=nt_trade_copy,limit=1,sort=nearest] Item set from entity @s Offers.Recipes[0].buyB
tag @e[type=item,tag=nt_trade_copy,limit=1,sort=nearest] remove nt_trade_copy
summon item ~ ~1 ~ {Tags:["nt_trade_copy"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=nt_trade_copy,limit=1,sort=nearest] Item set from entity @s Offers.Recipes[0].sell
tag @e[type=item,tag=nt_trade_copy,limit=1,sort=nearest] remove nt_trade_copy

data remove entity @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] Offers.Recipes[0]
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已移除最后添加的交易","color":"gray"}]
