#>enderface:gui_layoutes/shop/set_trade_data/single_data/battle_axe
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:battle_axe
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:battle_axe
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:iron_sword
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 7
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _