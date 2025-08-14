##init datapack

scoreboard objectives add nt_core dummy

scoreboard players set #-1 nt_core -1

#define score_holder #rewardOpen
#define score_holder #rewardid
execute unless score #rewardid nt_core matches 0.. run scoreboard players set #rewardid nt_core 0
execute unless score #rewardOpen nt_core matches 0..1 run scoreboard players set #rewardOpen nt_core 0

#define storage nt:reward
#define storage nt:backup
#define storage nt:import
#define storage nt:tmp

schedule function nt:private/vloop 3t append