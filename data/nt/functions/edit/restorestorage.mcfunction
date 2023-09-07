##restore storage

execute if block ~ ~ ~ command_block run return -1
execute unless data storage nt:backup backup run return -1

tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"即将在 15s 后根据备份恢复数据，当前数据将被覆盖。点击此处取消本操作。","color":"gray","hoverEvent":{"action":"show_text","contents":"取消恢复"},"clickEvent":{"action":"run_command","value":"/tag @a remove nt_restore"}}]
tag @s add nt_restore

schedule function nt:private/restorestorage 15s replace