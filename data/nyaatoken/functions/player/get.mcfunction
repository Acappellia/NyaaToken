execute if score #rewardOpen nt_core matches 0 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"gold"},{"text":"奖励发放还没有开始喵~","color":"gray"}]

execute if score #rewardOpen nt_core matches 1 if score #advancedMode nt_core matches 1 if score #advancedWait nt_core matches 1 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"gold"},{"text":"请等待前一位玩家领取完毕~","color":"gray"}]
execute if score #rewardOpen nt_core matches 1 if score #advancedMode nt_core matches 1 if score #advancedWait nt_core matches 0 as @p[distance=..10] at @s run function nyaatoken:internal/advanced/giverw

execute if score #rewardOpen nt_core matches 1 if score #advancedMode nt_core matches 0 if score #rewardType nt_core matches 0 as @p[distance=..10] at @s run function nyaatoken:internal/giverw2all
execute if score #rewardOpen nt_core matches 1 if score #advancedMode nt_core matches 0 if score #rewardType nt_core matches 1 as @p[distance=..10] at @s run function nyaatoken:internal/giverw2spc
execute if score #rewardOpen nt_core matches 1 if score #advancedMode nt_core matches 0 if score #rewardType nt_core matches 2 as @p[distance=..10] at @s run function nyaatoken:internal/giverwhyb