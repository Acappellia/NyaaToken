##add player data to tmp storage

##search player uuid
data modify storage nt:tmp tmp.UUID_source set from storage nt:import import.playerdata[0].UUID
scoreboard players reset #uuid_checkresult nt_core 
execute store result score #uuid_checkresult nt_core run function nt:private/search/tmp_uuid
execute unless score #uuid_checkresult nt_core matches 1 run function nt:private/edit/init_player

##search for each item
execute if data storage nt:import import.playerdata[0].data[0] run function nt:private/edit/addplayer_one

##if error
execute if score #import_error nt_core matches 1 as @p[tag=nt_import] run function nt:private/edit/import_error
execute if score #import_error nt_core matches 1 run return -1

##remove 1st player
data remove storage nt:import import.playerdata[0]

##add count
scoreboard players add #import_currentcount nt_core 1

##tellraw
tellraw @p[tag=nt_import] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"第 ","color":"gray"},{"score":{"name": "#import_currentcount","objective": "nt_core"},"color": "white"},{"text": "/","color": "gray"},{"score":{"name": "#import_totalcount","objective": "nt_core"},"color": "white"},{"text": " 条检查通过...","color": "gray"}]

##loop - schedule
execute if data storage nt:import import.playerdata[0] run schedule function nt:private/edit/addplayerdata 1t append

##finish loop
execute unless data storage nt:import import.playerdata[0] as @p[tag=nt_import] run function nt:private/edit/addreward_finish