##restore storage

execute if block ~ ~ ~ command_block run return -1
execute unless data storage nt:backup backup run return -1

tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"即将在 15s 后恢复为备份的数据。点击此处取消本操作。","color":"gray","hover_event":{"action":"show_text","value":"取消恢复"},"click_event":{"action":"run_command","command":"/tag @a remove nt_restore"}}]
tag @s add nt_restore

schedule function nt:private/restorestorage 15s replace