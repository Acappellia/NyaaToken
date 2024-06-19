##called to get reward in command block

#define score_holder #uuid_checkresult
#define score_holder #reward_count
#define score_holder #item_count
#define score_holder #give_full
#define score_holder #inv_slots
#define score_holder #give_slots

##check UUID
data modify storage nt:tmp tmp.UUID_source set from entity @s UUID
scoreboard players reset #uuid_checkresult nt_core 
execute store result score #uuid_checkresult nt_core run function nt:private/search/uuid
execute unless score #uuid_checkresult nt_core matches 1 run tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"没有查询到可以领取的奖励呢...","color":"gray"}]
execute unless score #uuid_checkresult nt_core matches 1 run return -1

##copy reward items
data modify storage nt:tmp tmp.items set from storage nt:reward items

##setblock
setblock ~ ~ ~ shulker_box

##init stat
scoreboard players set #reward_count nt_core 0
scoreboard players set #item_count nt_core 0
scoreboard players reset #give_full nt_core
execute store result score #inv_slots nt_core if data entity @s Inventory[]
scoreboard players remove #inv_slots nt_core 36
scoreboard players operation #inv_slots nt_core *= #-1 nt_core

##loop to put each item in box
execute if data storage nt:tmp tmp.items[0] run function nt:private/get/getloop

##give item to player
loot give @s mine ~ ~ ~ stone[minecraft:custom_data={drop_contents:1}]
setblock ~ ~ ~ air

##clear tmp
data remove storage nt:tmp tmp

##tellraw
execute if score #reward_count nt_core matches 1.. run tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"共计 ","color":"green"},{"score":{"name": "#reward_count","objective": "nt_core"},"color": "white"},{"text":" 份奖励 ","color":"green"},{"score":{"name": "#item_count","objective": "nt_core"},"color": "white"},{"text":" 件物品已经领取～","color":"green"}]
execute if score #give_full nt_core matches 1.. run tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"请为背包腾出空位后继续领取奖励...","color":"dark_green"}]
execute unless score #give_full nt_core matches 1.. run tellraw @s [{"text":"[NyaaToken] ","color":"gold"},{"text":"全部奖励已领取完毕～","color":"yellow"}]