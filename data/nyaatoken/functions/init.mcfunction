scoreboard objectives add nt_core dummy
scoreboard objectives add nt_getdefaultrw dummy
scoreboard objectives add nt_rewardcount dummy
scoreboard objectives add nt_loopint dummy

scoreboard objectives add nt_vshop_x dummy
scoreboard objectives add nt_vshop_y dummy
scoreboard objectives add nt_vshop_z dummy

execute unless score #rewardOpen nt_core matches 0..1 run scoreboard players set #rewardOpen nt_core 0
execute unless score #advancedMode nt_core matches 0..1 run scoreboard players set #advancedMode nt_core 0
execute unless score #advancedWait nt_core matches 0..1 run scoreboard players set #advancedWait nt_core 0
execute unless score #rewardType nt_core matches 0..2 run scoreboard players set #rewardType nt_core 2
execute unless score #defaultCount nt_core matches 1..2147483647 run scoreboard players set #defaultCount nt_core 1
execute unless score #shopFixedPos nt_core matches 0..1 run scoreboard players set #shopFixedPos nt_core 1

scoreboard players set #tmp nt_core 0
execute store success score #tmp nt_core run data get storage nyaatoken:reward reward
execute if score #tmp nt_core matches 0 run data modify storage nyaatoken:reward reward set value []
scoreboard players set #tmp nt_core 0
execute store success score #tmp nt_core run data get storage nyaatoken:reward playerdata
execute if score #tmp nt_core matches 0 run data modify storage nyaatoken:reward playerdata set value []
scoreboard players set #tmp nt_core 0
execute store success score #tmp nt_core run data get storage nyaatoken:reward playerreceived
execute if score #tmp nt_core matches 0 run data modify storage nyaatoken:reward playerreceived set value []

scoreboard players set #tmp nt_core 0
execute store success score #tmp nt_core run data get storage nyaatoken:backup backup
execute if score #tmp nt_core matches 0 run data modify storage nyaatoken:backup backup set value []