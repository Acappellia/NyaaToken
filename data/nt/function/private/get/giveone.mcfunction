##give another item to player

##add 1
loot insert ~ ~ ~ mine ~ ~1 ~ stone[minecraft:custom_data={drop_contents:1}]

##check if player bp full
execute store result score #give_slots nt_core if data block ~ ~ ~ Items[]
execute if score #give_slots nt_core > #inv_slots nt_core run function nt:private/get/removelast
execute if score #give_slots nt_core > #inv_slots nt_core run return -1

##add stat and loop
scoreboard players add #item_count nt_core 1
scoreboard players add #items_given nt_core 1
execute unless score #items_given nt_core = #items_to_give nt_core run function nt:private/get/giveone