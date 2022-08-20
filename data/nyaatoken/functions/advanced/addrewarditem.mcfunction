data modify storage nyaatoken:reward reward append from entity @p[distance=..10] SelectedItem
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"red"},{"text":"已将手持物品添加至奖励列表","color":"gold"}]

scoreboard players set #rewardOpen nt_core 0
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"red"},{"text":"已关闭奖励发放，请在确认配置后开启","color":"gray"}]