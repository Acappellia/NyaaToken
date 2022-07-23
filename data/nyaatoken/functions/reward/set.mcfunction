tp @e[type=armor_stand,tag=nt_reward_stand] ~ -128 ~
summon armor_stand ~ -63 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["nt_reward_stand"],DisabledSlots:4144959}
item replace entity @e[type=armor_stand,tag=nt_reward_stand] weapon.mainhand from entity @p[distance=..10] weapon.mainhand