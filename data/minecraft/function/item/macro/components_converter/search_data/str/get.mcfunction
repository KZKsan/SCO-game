$execute if data storage _ item_data_tmp{flag:1b} run data modify storage _ item_data_str.$(component_name)_flag set value ","
$execute if data storage _ item_data_tmp{add_flag:1} run data modify storage _ item_data_str.$(component_name)_add set value "'"
$data modify storage _ item_data_str.$(component_name)_name set value "$(component_name)="
$data modify storage _ item_data_str.$(component_name)_data set from storage _ item_data_tmp.components."minecraft:$(component_name)"
$data remove storage _ item_data_tmp.components."minecraft:$(component_name)"
data modify storage _ item_data_tmp.flag set value 1b
return 1