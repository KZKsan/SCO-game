#>minecraft:item/macro/replace/
#@api
#@input storage _ item_data:{id:"", count:0, components:{}, Slot:""}
#@output storage _ item_data:{id:"", count:0, components.., Slot:""}
function item/macro/components_converter/
data modify storage _ item_data_str.Slot set from storage _ item_data.Slot
function item/macro/replace/run with storage _ item_data_str
data remove storage _ item_data_str