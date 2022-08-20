data modify storage nyaatoken:reward playerreceived append from entity @s UUID
data modify storage nyaatoken:reward tmpreward set from storage nyaatoken:reward reward

execute as @s run function nyaatoken:internal/advanced/chooserwloop

tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"所有奖励已领取完毕~","color":"yellow"}]
scoreboard players set #advancedWait nt_core 0