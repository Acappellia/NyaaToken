##add new trade to npc

execute if items entity @p[distance=..10] hotbar.0 * if items entity @p[distance=..10] hotbar.2 * as @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] at @s run function nt:private/vnewtrade
execute unless items entity @p[distance=..10] hotbar.0 * run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"未添加交易: 请在快捷栏1、2号位置放置兑换物","color":"gray"}]
execute unless items entity @p[distance=..10] hotbar.2 * run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"未添加交易: 请在快捷栏3号位置放置兑换产物","color":"gray"}]