##backup storage

execute if block ~ ~ ~ command_block run return -1

##storage
data modify storage nt:backup backup.items set from storage nt:reward items
data modify storage nt:backup backup.playerdata set from storage nt:reward playerdata

##id score
execute store result storage nt:backup backup.rewardid int 1 run scoreboard players get #rewardid nt_core

tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"数据已备份","color":"white"}]