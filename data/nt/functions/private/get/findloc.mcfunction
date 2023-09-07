##find a location with 2 blocks of air

##check
execute if block ~ ~ ~ air if block ~ ~1 ~ air run scoreboard players set #loc_find nt_core 1

##execute & quit
execute if score #loc_find nt_core matches 1 run function nt:private/get/cbget
execute if score #loc_find nt_core matches 1 run return 1

##loop
execute positioned ~ ~1 ~ run function nt:private/get/findloc


##another kind of loop

##check location
#execute unless block ~ ~ ~ air positioned ~ ~1 ~ run function nt:private/get/findloc
#execute if score #loc_find nt_core matches 1 run return 1
#execute unless block ~ ~1 ~ air positioned ~ ~2 ~ run function nt:private/get/findloc
#execute if score #loc_find nt_core matches 1 run return 1

##execute & store
#function nt:private/get/cbget
#scoreboard players set #loc_find nt_core 1