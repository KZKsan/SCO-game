#>sco:stage_data/stage/blank_fortress/object/put_fuel/reset
#@within sco:stage_data/stage/blank_fortress/object/**
tag @s add origin
$execute on passengers as @s[type=text_display] run data modify entity @s text set value '["> ",{"score":{"name":"@n[type=item_display,distance=..3,tag=origin]","objective":"stage_object.count.1"}},"/",{"score":{"name":"$(name)","objective":"stage_object.configs"}}," <"]'
tag @s remove origin