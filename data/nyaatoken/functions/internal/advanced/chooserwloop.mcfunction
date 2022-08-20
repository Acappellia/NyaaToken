scoreboard players set #tmploop nt_core 0
execute store success score #tmploop nt_core store result score @s nt_loopint run data get storage nyaatoken:reward tmpplayerdata[0].count[0]
execute if score #tmploop nt_core matches 1 as @s at @s run function nyaatoken:internal/advanced/rwloop
execute if score #tmploop nt_core matches 1 run data remove storage nyaatoken:reward tmpplayerdata[0].count[0]
execute if score #tmploop nt_core matches 1 run data remove storage nyaatoken:reward tmpreward[0]
execute if score #tmploop nt_core matches 1 as @s at @s run function nyaatoken:internal/advanced/chooserwloop