scoreboard players remove #tmploopindex nt_core 1
execute if score #tmploopindex nt_core matches -1 run data modify storage nyaatoken:reward playerreceived[0] set from storage nyaatoken:reward tmpplayerdata[0]
execute if score #tmploopindex nt_core matches 0.. run data modify storage nyaatoken:reward playerreceived append from storage nyaatoken:reward playerreceived[0]
execute if score #tmploopindex nt_core matches 0.. run data remove storage nyaatoken:reward playerreceived[0]
execute if score #tmploopindex nt_core matches 0.. run function nyaatoken:internal/advanced/updatereceived