#>item/macro/clear/
#@api
#@input storage _ item_data:{id:"", count:0, components:{}}
#@output storage _ item_data:{id:"", count:0, components..}

#function item/macro/components_converter/
execute store result score #item_macro.count _ run data get storage _ item_data.count
data modify storage _ item_data_str set from storage _ item_data
execute unless data storage _ item_data.components run data modify storage _ item_data_str.components set value ""
function item/macro/clear_severe/run with storage _ item_data_str
data remove storage _ item_data_str