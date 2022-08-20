scoreboard players set #advancedWait nt_core 1
data modify storage nyaatoken:reward tmpreceived set from storage nyaatoken:reward playerreceived

execute as @s run function nyaatoken:internal/advanced/seachreceived

execute if score #tmploop2 nt_core matches 1 run tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"已经领取过了喵~","color":"gray"}]
execute if score #tmploop2 nt_core matches 1 run scoreboard players set #advancedWait nt_core 0
execute if score #tmploop2 nt_core matches 0 as @s at @s run function nyaatoken:internal/advanced/giverw2
