##called to search for ntid in player list

#define score_holder #search_ntid_mark
#define score_holder #search_ntid_check

##init marker
execute store result score #search_ntid_mark nt_core store result score #search_ntid_check nt_core run data get storage nt:reward playerdata[0].data[0].ntid
execute if score #search_ntid_mark nt_core matches 1.. run function nt:private/search/player_ntid_loop