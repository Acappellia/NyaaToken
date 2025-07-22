##add reward after schedule

##add hotbar items
function nt:private/edit/addhotbar

##exit if error
execute if score #import_error nt_core matches 1 run return -1

##tellraw
tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"数据检查通过，正在合并...","color":"gray"}]

##clone back
data modify storage nt:reward items set from storage nt:tmp tmp.items
data modify storage nt:reward playerdata set from storage nt:tmp tmp.playerdata

##clear tmp & import
data remove storage nt:tmp tmp
data remove storage nt:import import

##remove tag
tag @s remove nt_import

##tellraw
tellraw @s [{"text":"[NyaaToken] ","color":"dark_green"},{"text":"奖励配置已成功导入，点击此处开启奖励发放。","color":"green","hover_event":{"action":"show_text","value":"开启发放"},"click_event":{"action":"run_command","command":"/function nt:maintoggle"}}]