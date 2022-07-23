# get reward for the executor

execute if score #rewardOpen nt_core matches 0 run tellraw @p[distance=..10] [{"text":"奖励还没有开始发放喵~","color":"light_gray"}]
execute if score #rewardOpen nt_core matches 1 as @p[distance=..10] at @s run function nyaatoken:internal/giverw
