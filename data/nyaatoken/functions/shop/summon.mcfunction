summon villager ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["nt_shop"],VillagerData:{level:99},Offers:{Recipes:[]},HandDropChances:[0.0f,0.0f]}
execute as @e[type=villager,tag=nt_shop,limit=1,sort=nearest,distance=..10] at @s run function nyaatoken:internal/vsummon
execute if score #shopFixedPos nt_core matches 1 run schedule function nyaatoken:internal/vloop 20t replace
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"aqua"},{"text":"已生成村民商店","color":"green"}]