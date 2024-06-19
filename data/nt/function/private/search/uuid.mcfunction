##called to search uuid in reward data

##init a marker & check current id
data remove storage nt:tmp tmp.UUID_check
data remove storage nt:tmp tmp.UUID_mark
data modify storage nt:tmp tmp.UUID_check set from storage nt:reward playerdata[0].UUID
data modify storage nt:tmp tmp.UUID_mark set from storage nt:reward playerdata[0].UUID

##if it has a value, enter loop
execute if data storage nt:tmp tmp.UUID_check store result score #uuid_checkresult nt_core run function nt:private/search/uuid_loop