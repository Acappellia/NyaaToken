##players receives reward

#define score_holder #loc_find

##check open
execute if score #rewardOpen nt_core matches 0 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"gold"},{"text":"奖励还在准备中... 等一会再来喵~","color":"gray"}]
execute if score #rewardOpen nt_core matches 0 run return -1

##find location to place the shulker boxes
scoreboard players reset #loc_find nt_core
execute as @p[distance=..10] positioned ~ 256 ~ run function nt:private/get/findloc