#>enderface:gui_layoutes/shop/set_trade_data/single_data/fishing_rod
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with fishing_rod
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _