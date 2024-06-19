##import error

##set error
scoreboard players set #import_error nt_core 1

##clear tmp & import
data remove storage nt:tmp tmp
data remove storage nt:import import

##remove tag
tag @s remove nt_import

##tellraw
tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"数据检查不通过，未造成修改。请检查后重新导入。","color":"red"}]