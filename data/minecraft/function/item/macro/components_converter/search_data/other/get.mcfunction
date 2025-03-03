execute if data storage _ item_data_tmp{flag:1b} run data modify storage _ item_data_tmp.data_str append value ","
$data modify storage _ item_data_tmp.data_str append value "$(component_name)="
$data modify storage _ item_data_tmp.macro.data_fetch set from storage _ item_data_tmp.components."minecraft:$(component_name)"
function minecraft:item/macro/components_converter/search_data/other/to_str with storage _ item_data_tmp.macro
data remove storage _ item_data_tmp.macro
$data remove storage _ item_data_tmp.components."minecraft:$(component_name)"
data modify storage _ item_data_tmp.flag set value 1b
return 1