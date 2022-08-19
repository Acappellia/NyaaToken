execute if score #shopFixedPos nt_core matches 0 run scoreboard players set #tmp nt_core 1
execute if score #shopFixedPos nt_core matches 1 run scoreboard players set #tmp nt_core 0
scoreboard players operation #shopFixedPos nt_core = #tmp nt_core

execute if score #shopFixedPos nt_core matches 0 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已解锁村民商店位置","color":"gray"}]
execute if score #shopFixedPos nt_core matches 1 run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已锁定村民商店位置","color":"green"}]
