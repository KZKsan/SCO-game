#>enderface:gui_layoutes/shop/set_trade_data/single_data/potion/water_splash_bottle
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with splash_potion[potion_contents={potion:"minecraft:water"},max_stack_size=4] 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:2}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _