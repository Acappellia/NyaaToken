##called to actuall uninstall

execute unless entity @a[tag=nt_unins] run return -1

schedule clear nt:private/vloop

execute as @p[tag=nt_unins] run function nt:edit/backupstorage

scoreboard objectives remove nt_core

data remove storage nt:reward items
data remove storage nt:reward playerdata
data remove storage nt:import import
data remove storage nt:tmp tmp

tellraw @a[tag=nt_unins] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"NyaaToken 已卸载","color":"gray"}]
tellraw @a[tag=nt_unins] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"如需清除数据备份, 请点击此处","color":"gray","hover_event":{"action":"show_text","value":"清除备份"},"click_event":{"action":"suggest_command","command":"/data remove storage nt:backup backup"}}]
tag @a remove nt_unins
datapack disable "file/NyaaToken"