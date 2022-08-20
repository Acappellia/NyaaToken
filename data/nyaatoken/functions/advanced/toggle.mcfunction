scoreboard players set #rewardOpen nt_core 0

execute if score #advancedMode nt_core matches 0 run scoreboard players set #tmp nt_core 1
execute if score #advancedMode nt_core matches 1 run scoreboard players set #tmp nt_core 0
scoreboard players operation #advancedMode nt_core = #tmp nt_core

execute if score #advancedMode nt_core matches 0 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"red"},{"text":"已关闭高级发放模式","color":"gray"}]
execute if score #advancedMode nt_core matches 1 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"red"},{"text":"已开启高级发放模式, 请手动修改storage中奖励发放规则","color":"green"}]

tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"red"},{"text":"已关闭奖励发放，请在确认配置后开启","color":"gray"}]