##called to add new trade in NPC

data modify entity @s Offers.Recipes prepend value {rewardExp:1b,maxUses:32767,uses:0,xp:0,Paper.IgnoreDiscounts:1b}
data modify entity @s Offers.Recipes[0].buy set from entity @p[distance=..10] Inventory[{Slot:0b}]
data modify entity @s Offers.Recipes[0].buyB set from entity @p[distance=..10] Inventory[{Slot:1b}]
data modify entity @s Offers.Recipes[0].sell set from entity @p[distance=..10] Inventory[{Slot:2b}]
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已添加交易","color":"green"}]
