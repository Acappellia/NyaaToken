execute as @a[scores={nt_loopint=1..}] at @s run function nyaatoken:reward/getcopy
execute as @p[scores={nt_loopint=1..}] run schedule function nyaatoken:internal/getloop 1t replace