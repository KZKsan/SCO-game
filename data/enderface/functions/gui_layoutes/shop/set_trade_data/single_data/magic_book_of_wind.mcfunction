#>enderface:gui_layoutes/shop/set_trade_data/single_data/magic_book_of_wind
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:magic_book_of_wind
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:magic_book_of_wind
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with bow 1
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 12
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _