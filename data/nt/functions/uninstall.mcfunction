##uninstall the datapack

execute if block ~ ~ ~ command_block run return -1

tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"即将在 15s 后卸载 Nyaatoken... 点击此处取消本操作。","color":"gray","hoverEvent":{"action":"show_text","contents":"取消卸载"},"clickEvent":{"action":"run_command","value":"/tag @a remove nt_unins"}}]
tag @s add nt_unins

schedule function nt:private/uninstall 15s replace