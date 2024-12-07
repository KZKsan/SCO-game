data modify storage _ item_data_tmp.search.component_name set from storage _ item_data_tmp.search_str_list[0]
data modify storage _ item_data_tmp.add_flag set from storage _ item_data_tmp.search_str_add_list[0]
data modify storage _ item_data_tmp.flag set value 0b
function minecraft:item/macro/components_converter/search_data/str/macro with storage _ item_data_tmp.search