scoreboard players reset @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] nt_vshop_x
scoreboard players reset @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] nt_vshop_y
scoreboard players reset @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] nt_vshop_z
tp @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] ~ -256 ~
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已移除村民商店","color":"gray"}]