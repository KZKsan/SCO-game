$execute if data storage _ item_data_tmp.components."minecraft:$(component_name)" run function minecraft:item/macro/components_converter/search_data/other/get with storage _ item_data_tmp.search
data remove storage _ item_data_tmp.search_list[0]
execute unless data storage _ item_data_tmp.search_list[0] run return 0
data modify storage _ item_data_tmp.search.component_name set from storage _ item_data_tmp.search_list[0]
function minecraft:item/macro/components_converter/search_data/other/test with storage _ item_data_tmp.search