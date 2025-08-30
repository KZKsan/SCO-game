#>sco:player/inventory_histories/return_items/head
#@within sco:player/inventory_histories/return_items/
data modify storage _ item_data set from storage sco:inventory_histories inventory_data.input.head
data modify storage _ item_data.Slot set value "armor.head"
function item/macro/replace/
data remove storage sco:inventory_histories inventory_data.input.head