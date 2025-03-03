#>sco:stage_data/stage/blank_fortress/object/thunder/click/launch
#@within sco:stage_data/stage/blank_fortress/object/thunder/
execute on passengers run tag @s[type=marker] add actived_marker
execute on passengers run tag @s[type=interaction] add actived_interaction
scoreboard players set @s stage_object.count.0 21
scoreboard players set @s stage_object.count.1 0
scoreboard players operation @s stage_object.cooldown = #blank_fortress.thunder.cooltime stage_object.configs
execute as @n[tag=actived_interaction,type=interaction] on target if entity @s[team=red] run data modify entity @n[type=marker,tag=actived_marker,distance=..50] data.team set value "blue"
execute as @n[tag=actived_interaction,type=interaction] on target if entity @s[team=blue] run data modify entity @n[type=marker,tag=actived_marker,distance=..50] data.team set value "red"
tag @n[type=marker,tag=actived_marker] add actived_marker
tag @n[type=interaction,tag=actived_interaction] remove actived_interaction