scoreboard objectives remove nt_core
scoreboard objectives remove nt_getdefaultrw
scoreboard objectives remove nt_rewardcount
scoreboard objectives remove nt_loopint
scoreboard objectives remove nt_vshop_x 
scoreboard objectives remove nt_vshop_y
scoreboard objectives remove nt_vshop_z

data remove storage nyaatoken:reward reward
data remove storage nyaatoken:reward playerdata
data remove storage nyaatoken:reward playerreceived
data remove storage nyaatoken:reward tmpplayerdata
data remove storage nyaatoken:reward tmpreward
data remove storage nyaatoken:reward tmpreceived
#tp @e[type=armor_stand,tag=nt_reward_stand] ~ -256 ~

tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"NyaaToken已卸载, 请手动删除数据包zip文件","color":"gray"}]
datapack disable "file/NyaaToken.zip"

