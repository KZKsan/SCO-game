#>sco:player/inventory_histories/pop/fetch_load_data
#@api
function p-storage/get
data remove storage sco:inventory_histories inventory_data.input
$data modify storage sco:inventory_histories inventory_data.input set from storage p-storage _[0].data.inventory_histories[{name:"$(name)"}]
$data remove storage p-storage _[0].data.inventory_histories[{name:"$(name)"}]
data modify storage p-storage _[0].data.inventory_histories append from storage sco:inventory_histories inventory_data.input
execute if data storage p-storage _[0].data.inventory_histories[0] run function sco:player/inventory_histories/pop/load_data