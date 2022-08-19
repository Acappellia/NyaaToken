execute as @e[type=villager,tag=nt_shop] at @s run function nyaatoken:internal/vreset
execute if score #shopFixedPos nt_core matches 1 run schedule function nyaatoken:internal/vloop 2t replace