scoreboard players set #rewardOpen nt_core 0
scoreboard players set #advancedWait nt_core 0
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已关闭奖励发放","color":"gray"}]

scoreboard objectives remove nt_getdefaultrw
scoreboard objectives remove nt_rewardcount
scoreboard objectives remove nt_loopint
scoreboard objectives add nt_getdefaultrw dummy
scoreboard objectives add nt_rewardcount dummy
scoreboard objectives add nt_loopint dummy

data modify storage nyaatoken:backup backup append value {}
data modify storage nyaatoken:backup backup[-1].reward set from storage nyaatoken:reward reward
data modify storage nyaatoken:backup backup[-1].playerdata set from storage nyaatoken:reward playerdata
data modify storage nyaatoken:backup backup[-1].playerreceived set from storage nyaatoken:reward playerreceived

data remove storage nyaatoken:reward reward
data remove storage nyaatoken:reward playerdata
data remove storage nyaatoken:reward playerreceived
data remove storage nyaatoken:reward tmpplayerdata
data remove storage nyaatoken:reward tmpreward
data remove storage nyaatoken:reward tmpreceived
data modify storage nyaatoken:reward reward set value []
data modify storage nyaatoken:reward playerdata set value []
data modify storage nyaatoken:reward playerreceived set value []

#tp @e[type=armor_stand,tag=nt_reward_stand] ~ -256 ~

tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已重置本轮奖励配置与发放记录","color":"gray"}]
