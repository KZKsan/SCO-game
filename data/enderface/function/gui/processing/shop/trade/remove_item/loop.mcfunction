#>enderface:gui/processing/shop/trade/remove_item/loop
#@within enderface:gui/processing/shop/trade/remove_item/
#@private
execute unless data storage enderface:data shop.tmp.buy[0].components run data modify storage enderface:data tmp.buy[0].components set value ""
#tellraw @p {"nbt":"shop.tmp.buy[0]","storage":"enderface:data"}
data modify storage _ item_data set from storage enderface:data shop.tmp.buy[0]
function item/macro/clear_severe/
data remove storage enderface:data shop.tmp.buy[0]
execute if data storage enderface:data shop.tmp.buy[0] run function enderface:gui/processing/shop/trade/remove_item/loop