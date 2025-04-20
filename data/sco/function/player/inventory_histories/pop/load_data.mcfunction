#>sco:player/inventory_histories/pop/load_data
#@within sco:player/inventory_histories/pop/
data modify storage sco:inventory_histories inventory_data.input set from storage p-storage _[0].data.inventory_histories[-1].Items
function sco:player/inventory_histories/return_items/
data modify storage sco:inventory_histories inventory_data.input set from storage p-storage _[0].data.inventory_histories[-1].equipment
function sco:player/inventory_histories/return_items/equipment
data remove storage p-storage _[0].data.inventory_histories[-1]