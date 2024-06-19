##loop to check each item

#define score_holder #searchid_result
#define score_holder #search_ntid_source

##check if player bp full
execute store result score #give_slots nt_core if data block ~ ~ ~ Items[]
execute if score #give_slots nt_core >= #inv_slots nt_core run scoreboard players set #give_full nt_core 1
execute if score #give_slots nt_core >= #inv_slots nt_core run return -1

##search in playerdata
execute store result score #search_ntid_source nt_core run data get storage nt:tmp tmp.items[0].ntid
scoreboard players reset #searchid_result nt_core
execute store result score #searchid_result nt_core run function nt:private/search/player_ntid
execute if score #searchid_result nt_core matches 1 run function nt:private/get/giveitem

##remove 1st in tmp & loop
data remove storage nt:tmp tmp.items[0]
execute if data storage nt:tmp tmp.items[0] run function nt:private/get/getloop