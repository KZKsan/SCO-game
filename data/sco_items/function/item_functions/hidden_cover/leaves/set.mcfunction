#>sco_items:item_functions/hidden_cover/leaves/set
#
tag @s add origin
execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["hidden_cover","bottom","set_data"],item:{id:"minecraft:moss_block",Count:1b,components:{"minecraft:custom_data":{Owner:[I;0,0,0,0]}}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.4999f,0f],scale:[1.0f,0.00001f,1.0f]},Passengers:[{id:"item_display",Tags:["hidden_cover","top","set_data"],item:{id:"minecraft:moss_block",Count:1b,components:{"minecraft:custom_data":{Owner:[I;0,0,0,0]}}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1.0f,1.0f,1.0f]}},{id:"item_display",Tags:["hidden_cover","bottom","set_data"],item:{id:"minecraft:moss_block",Count:1b,components:{"minecraft:custom_data":{Owner:[I;0,0,0,0]}}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.4999f],scale:[1.0f,1.0f,0.00001f]}},{id:"item_display",Tags:["hidden_cover","bottom","set_data"],item:{id:"minecraft:moss_block",Count:1b,components:{"minecraft:custom_data":{Owner:[I;0,0,0,0]}}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.4999f],scale:[1.0f,1.0f,0.00001f]}},{id:"item_display",Tags:["hidden_cover","bottom","set_data"],item:{id:"minecraft:moss_block",Count:1b,components:{"minecraft:custom_data":{Owner:[I;0,0,0,0]}}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.4999f,0f,0f],scale:[0.00001f,1.0f,1.0f]}},{id:"item_display",Tags:["hidden_cover","bottom","set_data"],item:{id:"minecraft:moss_block",Count:1b,components:{"minecraft:custom_data":{Owner:[I;0,0,0,0]}}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4999f,0f,0f],scale:[0.00001f,1.0f,1.0f]}}]}
function sco_items:item_functions/hidden_cover/leaves/block/
execute as @e[tag=hidden_cover,tag=set_data] run data modify entity @s item.components."minecraft:custom_data".Owner set from entity @p[tag=origin] UUID
tag @s remove origin
tag @e[tag=set_data] remove set_data
playsound block.moss.place block @a ~ ~ ~ 1 1
playsound block.moss.place block @a ~ ~ ~ 1 1.5