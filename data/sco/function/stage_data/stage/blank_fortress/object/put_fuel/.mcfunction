#>sco:stage_data/stage/blank_fortress/object/put_fuel/
#@within sco:stage_data/stage/blank_fortress/object/**
tag @s add origin
execute on passengers run tag @s[type=interaction] add actived_interaction
execute as @n[type=interaction,tag=actived_interaction] on target run clear @s coal[custom_data~{item_functions:{stage_item:{fuel:1b}}}] 1
scoreboard players add @s stage_object.count.1 1
playsound entity.item.pickup player @a ~ ~ ~ 1 1
$execute unless score @s stage_object.count.1 = $(name) stage_object.configs on passengers as @s[type=text_display] run data modify entity @s text set value '["> ",{"score":{"name":"@n[type=item_display,distance=..3,tag=origin]","objective":"stage_object.count.1"}},"/",{"score":{"name":"$(name)","objective":"stage_object.configs"}}," <"]'
$execute if score @s stage_object.count.1 = $(name) stage_object.configs on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":">Click for Launch<"}'
tag @n[type=interaction,tag=actived_interaction] remove actived_interaction
tag @s remove origin
