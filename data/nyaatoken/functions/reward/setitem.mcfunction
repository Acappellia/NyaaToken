#tp @e[type=armor_stand,tag=nt_reward_stand] ~ -256 ~

data modify storage nyaatoken:reward reward prepend from entity @p[distance=..10] SelectedItem

#summon armor_stand ~ -63 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["nt_reward_stand"],DisabledSlots:4144959}
#item replace entity @e[type=armor_stand,tag=nt_reward_stand] weapon.mainhand from entity @p[distance=..10] weapon.mainhand

tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已将手持物品设置为当前奖励","color":"gold"}]

scoreboard players set #rewardOpen nt_core 0
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"已关闭奖励发放，请在确认配置后开启","color":"gray"}]