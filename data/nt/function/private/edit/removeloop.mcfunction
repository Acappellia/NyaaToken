##loop to remove specific reward for all players

##find ntid
execute store result score #searchid_result nt_core run function nt:private/search/player_ntid
execute if score #searchid_result nt_core matches 1 run data remove storage nt:reward playerdata[0].data[0]

##move to next player
data modify storage nt:reward playerdata append from storage nt:reward playerdata[0]
data remove storage nt:reward playerdata[0]
data modify storage nt:tmp tmp.UUID_check set from storage nt:reward playerdata[0].UUID

##check if looped a full cucle
execute store success score #search_uuid_check nt_core run data modify storage nt:tmp tmp.UUID_check set from storage nt:tmp tmp.UUID_mark
data modify storage nt:tmp tmp.UUID_check set from storage nt:reward playerdata[0].UUID
execute if score #search_uuid_check nt_core matches 1 run function nt:private/edit/removeloop