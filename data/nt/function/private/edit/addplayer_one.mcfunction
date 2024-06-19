##called to add one entry for the player

#define score_holder #import_ntid
#define score_holder #import_count

##add entry
data modify storage nt:tmp tmp.playerdata[0].data append value {}

##check count and add
execute store result score #import_count nt_core run data modify storage nt:tmp tmp.playerdata[0].data[-1].count set from storage nt:import import.playerdata[0].data[0].count
execute unless score #import_count nt_core matches 1.. run scoreboard players set #import_error nt_core 1

##check ntid and add
execute store result score #import_ntid nt_core run data get storage nt:import import.playerdata[0].data[0].index
execute unless score #import_ntid nt_core matches 1..9 run scoreboard players set #import_error nt_core 1
execute if score #import_ntid nt_core > #import_index_max nt_core run scoreboard players operation #import_index_max nt_core = #import_ntid nt_core
execute store result storage nt:tmp tmp.playerdata[0].data[-1].ntid int 1 run scoreboard players operation #import_ntid nt_core += #rewardid nt_core

##exit if error
execute if score #import_error nt_core matches 1 run return -1

##remove added one
data remove storage nt:import import.playerdata[0].data[0]

##if more, loop
execute if data storage nt:import import.playerdata[0].data[0] run function nt:private/edit/addplayer_one