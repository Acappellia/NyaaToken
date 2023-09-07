##import error

##set error
scoreboard players set #import_error nt_core 1

##clear tmp & import
data remove storage nt:tmp tmp
data remove storage nt:import import

##remove tag
tag @s remove nt_import

##tellraw
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"导入数据检查不通过，未造成更改。请检查配置与快捷栏是否正确。确认后请重新导入。","color":"red"}]