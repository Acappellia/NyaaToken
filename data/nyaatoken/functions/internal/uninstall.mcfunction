scoreboard objectives remove nt_core
scoreboard objectives remove nt_getdefaultrw
scoreboard objectives remove nt_rewardcount
scoreboard objectives remove nt_loopint
scoreboard objectives remove nt_vshop_x 
scoreboard objectives remove nt_vshop_y
scoreboard objectives remove nt_vshop_z

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

#tp @e[type=armor_stand,tag=nt_reward_stand] ~ -256 ~

tellraw @a [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"NyaaToken已卸载","color":"gray"}]
datapack disable "file/NyaaToken.zip"
