scoreboard objectives remove nt_core
scoreboard objectives remove nt_getdefaultrw
scoreboard objectives remove nt_rewardcount
scoreboard objectives remove nt_loopint
scoreboard objectives add nt_core dummy
scoreboard objectives add nt_getdefaultrw dummy
scoreboard objectives add nt_rewardcount dummy
scoreboard objectives add nt_loopint dummy

scoreboard players set #rewardOpen nt_core 0
scoreboard players set #rewardType nt_core 2
scoreboard players set #defaultCount nt_core 1