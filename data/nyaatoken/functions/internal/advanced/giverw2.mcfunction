data modify storage nyaatoken:reward tmpreceived set from storage nyaatoken:reward playerreceived
scoreboard players set #tmploopindex nt_core 0
execute as @s run function nyaatoken:internal/advanced/seachreceived
execute if score #tmploop2 nt_core matches 0 run data modify storage nyaatoken:reward playerreceived prepend from storage nyaatoken:reward tmpplayerdata[0]
execute if score #tmploop2 nt_core matches 1 as @s at @s run function nyaatoken:internal/advanced/updatereceived
execute as @s at @s run function nyaatoken:internal/advanced/giverw3



