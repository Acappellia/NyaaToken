scoreboard players set #advancedWait nt_core 1

data modify storage nyaatoken:reward tmpplayerdata set from storage nyaatoken:reward playerdata
execute as @s run function nyaatoken:internal/advanced/searchidloop
execute if score #tmploop2 nt_core matches 0 run tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"没有可领取的奖励喵~","color":"gray"}]
execute if score #tmploop2 nt_core matches 0 run scoreboard players set #advancedWait nt_core 0
execute if score #tmploop2 nt_core matches 1 as @s at @s run function nyaatoken:internal/advanced/giverw2