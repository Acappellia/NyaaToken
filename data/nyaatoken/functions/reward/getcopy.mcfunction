scoreboard players remove @s nt_loopint 1
summon item ~ ~1 ~ {Tags:["nt_reward_copy"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=nt_reward_copy,limit=1,sort=nearest] Item set from storage nyaatoken:reward reward[]
#data modify entity @e[type=item,tag=nt_reward_copy,limit=1,sort=nearest] Item set from entity @e[type=armor_stand,tag=nt_reward_stand,limit=1] HandItems[0]
