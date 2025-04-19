#>sco_items:item_functions/show_durability/chest/actionbar
#@within sco_items:item_functions/show_durability/chest/
function sco_items:actionbar/set_str
data remove storage _ data_fetch
data modify storage _ data_fetch.id set from entity @s equipment.chest.id
execute store result score # _ run data get entity @s equipment.chest.components."minecraft:damage"
execute store result score #_ _ run data get entity @s equipment.chest.components."minecraft:damage"
execute store result score #_ _ run function item/damage_data
scoreboard players operation # _ -= #_ _
scoreboard players set #100 _ 100
scoreboard players operation # _ *= #100 _
execute store result storage sco_items:data show_durability.value int -1 run scoreboard players operation # _ /= #_ _
execute unless data entity @s equipment.chest.components."minecraft:custom_data".item_functions{show_durability:1b} run data modify storage sco_items:data show_durability.value set value 0
data modify storage c_str str set value []
data modify storage c_str str append value '[{"text": "胴: ","bold": true,"color": "white"},"'
data modify storage c_str str append string storage sco_items:data show_durability.value
data modify storage c_str str append value '",{"text": "%","color": "white"}]'
function c_str/
data modify storage p-storage _[0].data.item_actionbar append from storage c_str str[0]