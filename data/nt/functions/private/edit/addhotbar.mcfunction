##add hotbar items to list

##tellraw
tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"正在检查快捷栏物品...","color":"gray"}]

##add hotbar 1
execute unless score #import_index_max nt_core matches 1.. run return 1
execute unless data entity @s Inventory[{Slot:0b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"1 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:0b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:0b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:0b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:0b}].tag

##add hotbar 2
execute unless score #import_index_max nt_core matches 2.. run return 1
execute unless data entity @s Inventory[{Slot:1b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"2 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:1b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:1b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:1b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:1b}].tag

##add hotbar 3
execute unless score #import_index_max nt_core matches 3.. run return 1
execute unless data entity @s Inventory[{Slot:2b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"3 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:2b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:2b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:2b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:2b}].tag

##add hotbar 4
execute unless score #import_index_max nt_core matches 4.. run return 1
execute unless data entity @s Inventory[{Slot:3b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"4 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:3b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:3b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:3b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:3b}].tag

##add hotbar 5
execute unless score #import_index_max nt_core matches 5.. run return 1
execute unless data entity @s Inventory[{Slot:4b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"5 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:4b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:4b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:4b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:4b}].tag

##add hotbar 6
execute unless score #import_index_max nt_core matches 6.. run return 1
execute unless data entity @s Inventory[{Slot:5b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"6 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:5b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:5b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:5b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:5b}].tag

##add hotbar 7
execute unless score #import_index_max nt_core matches 7.. run return 1
execute unless data entity @s Inventory[{Slot:6b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"7 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:6b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:6b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:6b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:6b}].tag

##add hotbar 8
execute unless score #import_index_max nt_core matches 8.. run return 1
execute unless data entity @s Inventory[{Slot:7b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"8 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:7b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:7b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:7b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:7b}].tag

##add hotbar 9
execute unless score #import_index_max nt_core matches 9.. run return 1
execute unless data entity @s Inventory[{Slot:8b}].Count run tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"9 号快捷栏物品不存在","color":"gold"}]
execute unless data entity @s Inventory[{Slot:8b}].Count run function nt:private/edit/import_error
execute unless data entity @s Inventory[{Slot:8b}].Count run return -1

data modify storage nt:tmp tmp.items append value {item:{Count:1b}}
execute store result storage nt:tmp tmp.items[-1].ntid int 1 run scoreboard players add #rewardid nt_core 1
data modify storage nt:tmp tmp.items[-1].item.id set from entity @s Inventory[{Slot:8b}].id
data modify storage nt:tmp tmp.items[-1].item.tag set from entity @s Inventory[{Slot:8b}].tag