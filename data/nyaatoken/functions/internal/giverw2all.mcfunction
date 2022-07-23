execute if score @s nt_getdefaultrw matches 1.. run tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"没有可领取的奖励喵~","color":"gray"}]

execute unless score @s nt_getdefaultrw matches 1.. run function nyaatoken:internal/defaultloop
execute unless score @s nt_getdefaultrw matches 1.. run tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"奖励已领取~","color":"yellow"}]
scoreboard players set @s nt_getdefaultrw 1