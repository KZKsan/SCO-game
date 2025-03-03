data remove storage _ item_data_tmp.data_str
data modify storage _ item_data_tmp.search.component_name set from storage _ item_data_tmp.search_list[0]
function minecraft:item/macro/components_converter/search_data/other/test with storage _ item_data_tmp.search
execute unless data storage _ item_data_tmp.data_str[0] run return 0
data modify storage c_str str set from storage _ item_data_tmp.data_str
function c_str/
data modify storage _ item_data_str.components set from storage c_str str[0]