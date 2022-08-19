scoreboard players set #rewardOpen nt_core 0
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已关闭奖励发放","color":"gray"}]

scoreboard objectives remove nt_getdefaultrw
scoreboard objectives remove nt_rewardcount
scoreboard objectives remove nt_loopint
scoreboard objectives add nt_getdefaultrw dummy
scoreboard objectives add nt_rewardcount dummy
scoreboard objectives add nt_loopint dummy

data remove storage nyaatoken:reward reward
#tp @e[type=armor_stand,tag=nt_reward_stand] ~ -256 ~

tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已重置本轮奖励配置与发放记录","color":"gray"}]
