#>minecraft:item/macro/components_converter/
#@api
#@input storage {id:"", count:0, components:{}}
#@output storage _ item_data{id:"", count:0, components..}
data modify storage _ item_data_str set value {id:"",count:0,components:""}
data modify storage _ item_data_str.count set from storage _ item_data.count
data modify storage _ item_data_str.id set from storage _ item_data.id

function minecraft:item/macro/components_converter/search_data/