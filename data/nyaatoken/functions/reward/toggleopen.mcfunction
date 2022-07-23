execute if score #rewardOpen nt_core matches 0 run scoreboard players set #tmp nt_core 1
execute if score #rewardOpen nt_core matches 1 run scoreboard players set #tmp nt_core 0
scoreboard players operation #rewardOpen nt_core = #tmp nt_core

execute if score #rewardOpen nt_core matches 0 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已关闭奖励发放","color":"light_gray"}]
execute if score #rewardOpen nt_core matches 1 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已开启奖励发放","color":"green"}]
