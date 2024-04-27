##called to add new trade in NPC

data remove storage nt:tmp tmp_offer
data modify storage nt:tmp tmp_offer set value {rewardExp:1b,maxUses:32767,uses:0,xp:0,Paper.IgnoreDiscounts:1b}
data modify storage nt:tmp tmp_offer.buy set from entity @p[distance=..10] Inventory[{Slot:0b}]
data modify storage nt:tmp tmp_offer.buyB set from entity @p[distance=..10] Inventory[{Slot:1b}]
data modify storage nt:tmp tmp_offer.sell set from entity @p[distance=..10] Inventory[{Slot:2b}]
data modify entity @s Offers.Recipes prepend from storage nt:tmp tmp_offer

tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已添加交易","color":"green"}]
