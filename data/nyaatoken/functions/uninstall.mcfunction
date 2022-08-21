tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"正在卸载NyaaToken, 随后请手动删除数据包zip","color":"gray"}]
tellraw @p[distance=..10] [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"如需清除数据备份, 请点击此处","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"/data remove storage nyaatoken:backup backup"}]},"clickEvent":{"action":"suggest_command","value":"/data remove storage nyaatoken:backup backup"}}]

schedule clear nyaatoken:internal/vloop
schedule clear nyaatoken:internal/getloop
schedule function nyaatoken:internal/uninstall 20t replace
