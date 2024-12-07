$data modify storage _ item_data_str.$(component_name)_flag set value ""
$data modify storage _ item_data_str.$(component_name)_name set value ""
$data modify storage _ item_data_str.$(component_name)_data set value ""
$execute if data storage _ item_data_tmp{add_flag:1} run data modify storage _ item_data_str.$(component_name)_add set value ""
$execute if data storage _ item_data_tmp.components."minecraft:$(component_name)" run function minecraft:item/macro/components_converter/search_data/str/get with storage _ item_data_tmp.search
data remove storage _ item_data_tmp.search_str_list[0]
data remove storage _ item_data_tmp.search_str_add_list[0]
execute unless data storage _ item_data_tmp.search_str_list[0] run return 0
data modify storage _ item_data_tmp.search.component_name set from storage _ item_data_tmp.search_str_list[0]
data modify storage _ item_data_tmp.add_flag set from storage _ item_data_tmp.search_str_add_list[0]
function minecraft:item/macro/components_converter/search_data/str/macro with storage _ item_data_tmp.search