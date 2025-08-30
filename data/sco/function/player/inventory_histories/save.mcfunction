#>sco:player/inventory_histories/save
#@api
function p-storage/get
execute unless data storage p-storage _[0].data.inventory_histories run data modify storage p-storage _[0].data.inventory_histories set value []
data modify storage p-storage _[0].data.inventory_histories append value {Items:[],equipment:{}}
data modify storage p-storage _[0].data.inventory_histories[-1].Items set from entity @s Inventory
data modify storage p-storage _[0].data.inventory_histories[-1].equipment set from entity @s equipment