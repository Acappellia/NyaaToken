execute unless score @s nt_rewardcount matches 1.. run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"没有可领取的奖励喵~","color":"light_gray"}]

execute if score @s nt_rewardcount matches 1.. run function nyaatoken:internal/countloop
execute if score @s nt_rewardcount matches 1.. run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"奖励已领取~","color":"yellow"}]
execute if score @s nt_rewardcount matches 1.. run scoreboard players set @s nt_rewardcount 0