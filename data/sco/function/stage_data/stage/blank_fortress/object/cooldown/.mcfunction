#>sco:stage_data/stage/blank_fortress/object/cooldown/
#@within sco:stage_data/stage/blank_fortress/object/**
scoreboard players remove @s stage_object.cooldown 1
scoreboard players set #20 _ 20
scoreboard players operation # _ = @s stage_object.cooldown
scoreboard players operation # _ /= #20 _
scoreboard players add # _ 1
tag @s add origin
execute on passengers as @s[type=text_display] run data modify entity @s text set value '["> ",{"score":{"name":"#","objective":"_"}},"s <"]'
$execute if score @s stage_object.cooldown matches 0 on passengers as @s[type=text_display] run data modify entity @s text set value '["> ",{"score":{"name":"@n[type=item_display,tag=origin,distance=..3]","objective":"stage_object.count.1"}},"/",{"score":{"name":"$(name)","objective":"stage_object.configs"}}," <"]'
tag @s remove origin