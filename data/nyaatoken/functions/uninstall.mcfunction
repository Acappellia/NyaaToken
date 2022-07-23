scoreboard objectives remove nt_core
scoreboard objectives remove nt_getdefaultrw
scoreboard objectives remove nt_rewardcount
scoreboard objectives remove nt_loopint
tp @e[type=armor_stand,tag=nt_reward_stand] ~ -128 ~

tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"NyaaToken已卸载, 请手动删除数据包zip文件","color":"light_gray"}]
datapack disable "NyaaToken.zip"

