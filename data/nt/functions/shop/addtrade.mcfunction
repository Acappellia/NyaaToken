##add new trade to npc

execute if data entity @p[distance=..10] Inventory[{Slot:0b}] if data entity @p[distance=..10] Inventory[{Slot:2b}] as @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] at @s run function nt:private/vnewtrade
execute unless data entity @p[distance=..10] Inventory[{Slot:0b}] run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"未添加交易: 请在快捷栏1、2号位置放置兑换物","color":"gray"}]
execute unless data entity @p[distance=..10] Inventory[{Slot:2b}] run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"未添加交易: 请在快捷栏3号位置放置兑换产物","color":"gray"}]