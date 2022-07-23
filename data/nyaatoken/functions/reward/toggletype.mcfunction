scoreboard players set #rewardOpen nt_core 0

execute if score #rewardType nt_core matches 0 run scoreboard players set #tmp nt_core 1
execute if score #rewardType nt_core matches 1 run scoreboard players set #tmp nt_core 0
scoreboard players operation #rewardType nt_core = #tmp nt_core

execute if score #rewardType nt_core matches 0 run tellraw @p[distance=..10] [{"text":"已切换至统一发放模式，所有玩家均可领取相同的奖励","color":"gold"}]
execute if score #rewardType nt_core matches 1 run tellraw @p[distance=..10] [{"text":"已切换至按数量发放模式，请按需配置各玩家领取数量","color":"gold"}]


tellraw @p[distance=..10] [{"text":"已关闭奖励发放，请在确认配置后重新开启","color":"light_gray"}]

