#>enderface:gui_layoutes/shop/set_trade_data/category/sell_item
#@within tag/function enderface:set_trade_data
function enderface:gui_layoutes/shop/set_trade_data/reset_data

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with arrow 8
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:8}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/add_trade
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with arrow 8
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:8}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _




item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_helmet
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_chestplate
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 4
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _


loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:diamond_leggings
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 4
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_boots
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _

loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:iron_sword
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _

loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:shield
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _

loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:all_items
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].count set value 19b
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:iron_sword
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 loot sco_items:shield
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.2 with iron_helmet
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.3 with iron_chestplate
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.4 loot sco_items:diamond_leggings
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.5 with iron_boots
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.6 with arrow 32
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 19
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _


data modify storage enderface:shop sell_item set from storage enderface:shop trade_data
