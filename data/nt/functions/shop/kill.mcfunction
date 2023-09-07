##kill npc

execute if block ~ ~ ~ command_block run return -1

tp @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] ~ -256 ~
kill @e[type=item_display,tag=nt_shopbase,limit=1,sort=nearest,distance=..10]
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已移除村民商店","color":"gray"}]