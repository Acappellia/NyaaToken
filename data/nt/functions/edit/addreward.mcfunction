##add reward to storage

#define score_holder #import_error
#define score_holder #import_index_max
#define score_holder #import_totalcount
#define score_holder #import_currentcount

##init values
scoreboard players reset #import_error nt_core
scoreboard players set #import_index_max nt_core 0
scoreboard players reset #import_currentcount nt_core

##check storage
execute unless data storage nt:import import run tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"没有导入配置，无法添加奖励。","color":"gray"}]
execute unless data storage nt:import import run return -1

##turn off player-receiving
scoreboard players set #rewardOpen nt_core 0
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已关闭奖励发放","color":"gray"}]

##check totalcount
execute store result score #import_totalcount nt_core if data storage nt:import import.playerdata[]

##copy to tmp
data modify storage nt:tmp tmp.items set from storage nt:reward items
data modify storage nt:tmp tmp.playerdata set from storage nt:reward playerdata

##add tag
tag @p[distance=..10] add nt_import

##tellraw
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"即将开始检查并导入共 ","color":"yellow"},{"score":{"name": "#import_totalcount","objective": "nt_core"},"color": "white"},{"text": " 条数据...","color": "yellow"}]

##add player data - scheduled
execute if data storage nt:import import.playerdata[0] run schedule function nt:private/edit/addplayerdata 1s replace