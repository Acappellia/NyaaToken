scoreboard players remove @s nt_loopint 1
summon item ~ ~1 ~ {Tags:["nt_reward_copy"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=nt_reward_copy,limit=1,sort=nearest] Item set from storage nyaatoken:reward tmpreward[0]
tag @e[type=item,tag=nt_reward_copy,limit=1,sort=nearest] remove nt_reward_copy
execute as @s at @s run function nyaatoken:internal/advanced/rwloop