#>sco:player/inventory_histories/return_items/offhand
#@within sco:player/inventory_histories/return_items/
data modify storage _ item_data set from storage sco:inventory_histories inventory_data.input.offhand
data modify storage _ item_data.Slot set value "weapon.offhand"
function item/macro/replace/
data remove storage sco:inventory_histories inventory_data.input.offhand