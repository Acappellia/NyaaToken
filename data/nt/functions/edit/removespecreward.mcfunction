##remove last added reward

#define score_holder #remove_ntid

execute if block ~ ~ ~ command_block run return -1

##check given lcid
execute unless score #remove_ntid nt_core matches 1.. run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"未提供需要删除的奖励编号。点击这里添加。","color":"gray","hoverEvent":{"action":"show_text","contents":"输入编号"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #remove_ntid nt_core "}}]
execute unless score #remove_ntid nt_core matches 1.. run return -1

##check if items have this id
execute if score #remove_ntid nt_core > #rewardid nt_core run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"奖励编号不存在。点击这里修改。","color":"gray","hoverEvent":{"action":"show_text","contents":"输入编号"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #remove_ntid nt_core "}}]
execute if score #remove_ntid nt_core > #rewardid nt_core run return -1

##backup
function nt:edit/backupstorage

##loop for each player
data remove storage nt:tmp tmp.UUID_check
data remove storage nt:tmp tmp.UUID_mark
data modify storage nt:tmp tmp.UUID_check set from storage nt:reward playerdata[0].UUID
data modify storage nt:tmp tmp.UUID_mark set from storage nt:reward playerdata[0].UUID
scoreboard players operation #search_ntid_source nt_core = #remove_ntid nt_core
execute if data storage nt:tmp tmp.UUID_check run function nt:private/edit/removeloop

##reset
scoreboard players reset #remove_ntid nt_core

##tellraw
tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已删除指定的奖励。","color":"white"}]