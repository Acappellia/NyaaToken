##give item to player

#define score_holder #items_to_give
#define score_holder #items_given

##check if given
execute store result score #items_to_give nt_core run data get storage nt:reward playerdata[0].data[0].count
execute store result score #items_given nt_core run data get storage nt:reward playerdata[0].data[0].received
execute if score #items_given nt_core = #items_to_give nt_core run return -1

##give items
scoreboard players add #reward_count nt_core 1
setblock ~ ~1 ~ shulker_box
data modify block ~ ~1 ~ Items append value {Slot:0b,id:"minecraft:stone",count:1}
data modify block ~ ~1 ~ Items[0].id set from storage nt:tmp tmp.items[0].item.id
data modify block ~ ~1 ~ Items[0].components set from storage nt:tmp tmp.items[0].item.components
loot insert ~ ~ ~ mine ~ ~1 ~ stone[minecraft:custom_data={drop_contents:1}]
scoreboard players add #item_count nt_core 1
scoreboard players add #items_given nt_core 1
execute unless score #items_given nt_core = #items_to_give nt_core run function nt:private/get/giveone

##store items given
execute store result storage nt:reward playerdata[0].data[0].received int 1 run scoreboard players get #items_given nt_core

##remove box
setblock ~ ~1 ~ air