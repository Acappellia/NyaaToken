scoreboard players set #tmploop nt_core 0
scoreboard players set #tmploop2 nt_core 0
execute store success score #tmploop2 nt_core run data get storage nyaatoken:reward tmpplayerdata[0]
execute if score #tmploop2 nt_core matches 1 store success score #tmploop nt_core run data modify storage nyaatoken:reward tmpplayerdata[0].uuid set from entity @s UUID
execute if score #tmploop nt_core matches 1 run data remove storage nyaatoken:reward tmpplayerdata[0]
execute if score #tmploop nt_core matches 1 as @s run function nyaatoken:internal/advanced/searchidloop