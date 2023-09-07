##called to search uuid in reward data -2

#define score_holder #search_uuid_check

##check the current id
execute store success score #search_uuid_check lc_var run data modify storage nt:tmp tmp.UUID_check set from storage nt:tmp tmp.UUID_source
execute if score #search_uuid_check lc_var matches 0 run return 1

##move list top to bottom
data modify storage nt:reward playerdata append from storage nt:reward playerdata[0]
data remove storage nt:reward playerdata[0]

##get current id again
data modify storage nt:tmp tmp.UUID_check set from storage nt:reward playerdata[0].UUID

##check if looped a full cucle
execute store success score #search_uuid_check lc_var run data modify storage nt:tmp tmp.UUID_check set from storage nt:tmp tmp.UUID_mark
data modify storage nt:tmp tmp.UUID_check set from storage nt:reward playerdata[0].UUID
execute if score #search_uuid_check lc_var matches 0 run return -1

##loop
function nt:private/search/uuid_loop