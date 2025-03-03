#>enderface:gui_layoutes/shop/set_trade_data/category/guide_shop_type_sell
#@within tag/function enderface:set_trade_data
function enderface:gui_layoutes/shop/set_trade_data/reset_data

loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/item2
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/buy_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 3
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "emerald"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/sell_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "iron_sword"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _




data modify storage enderface:shop guide_shop_type_sell set from storage enderface:shop trade_data
