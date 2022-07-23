execute if score #rewardOpen nt_core matches 0 run scoreboard players set #tmp nt_core 1
execute if score #rewardOpen nt_core matches 1 run scoreboard players set #tmp nt_core 0
scoreboard players operation #rewardOpen nt_core = #tmp nt_core

execute if score #rewardOpen nt_core matches 0 run tellraw @p[distance=..10] [{"text":"奖励发放已开启","color":"light_gray"}]
execute if score #rewardOpen nt_core matches 1 run tellraw @p[distance=..10] [{"text":"奖励发放已开启","color":"green"}]
