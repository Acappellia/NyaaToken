##remove npc trade

execute unless data entity @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] Offers.Recipes[0] run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"无法移除交易: 交易项已空","color":"gray"}]
execute as @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] at @s if data entity @s Offers.Recipes[0] run function nt:private/vdeltrade