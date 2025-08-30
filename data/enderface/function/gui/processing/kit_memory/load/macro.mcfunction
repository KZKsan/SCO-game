#>enderface:gui/processing/kit_memory/load/macro
#@within enderface:gui/processing/kit_memory/load/
$data modify storage sco:inventory_histories inventory_data.input set from storage p-storage _[0].data.save_kit[{number:$(number)}].inventory
function sco:player/inventory_histories/return_items/
$data modify storage sco:inventory_histories inventory_data.input set from storage p-storage _[0].data.save_kit[{number:$(number)}].equipment
function sco:player/inventory_histories/return_items/equipment
