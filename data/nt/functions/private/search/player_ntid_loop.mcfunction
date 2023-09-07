##called to search for ntid in player list - loop

##check
execute if score #search_ntid_check nt_core = #search_ntid_source nt_core run return 1

##move
data modify storage nt:reward playerdata[0].data append from storage nt:reward playerdata[0].data[0]
data remove storage nt:reward playerdata[0].data[0]

##check again
execute store result score #search_ntid_check nt_core run data get storage nt:reward playerdata[0].data[0].ntid

##check mark
execute if score #search_ntid_check nt_core = #search_ntid_mark nt_core run return -1

##loop
function nt:private/search/player_ntid_loop