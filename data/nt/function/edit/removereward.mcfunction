##remove last added reward

#define score_holder #remove_ntid

execute if block ~ ~ ~ command_block run return -1

##backup
function nt:edit/backupstorage

##get last entry lcid
execute store result score #remove_ntid nt_core run data get storage nt:reward items[-1].ntid

##loop for each player
data remove storage nt:tmp tmp.UUID_check
data remove storage nt:tmp tmp.UUID_mark
data modify storage nt:tmp tmp.UUID_check set from storage nt:reward playerdata[0].UUID
data modify storage nt:tmp tmp.UUID_mark set from storage nt:reward playerdata[0].UUID
scoreboard players operation #search_ntid_source nt_core = #remove_ntid nt_core
execute if data storage nt:tmp tmp.UUID_check run function nt:private/edit/removeloop

##remove 1 id
scoreboard players remove #rewardid nt_core 1

##remove last item
data remove storage nt:reward items[-1]

##reset
scoreboard players reset #remove_ntid nt_core

##tellraw
tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已删除最后添加的一份奖励。","color":"white"}]