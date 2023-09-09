##called to actuall restore

execute unless entity @a[tag=nt_restore] run return -1

##storage
data modify storage nt:reward items set from storage nt:backup backup.items
data modify storage nt:reward playerdata set from storage nt:backup backup.playerdata

##id score
execute store result score #rewardid nt_core run data get storage nt:backup backup.rewardid

tellraw @a[tag=nt_restore] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"数据已恢复","color":"white"}]
tag @a remove nt_restore