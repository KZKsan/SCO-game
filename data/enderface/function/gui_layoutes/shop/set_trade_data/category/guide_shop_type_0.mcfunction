#>enderface:gui_layoutes/shop/set_trade_data/category/guide_shop_type_0
#@within tag/function enderface:set_trade_data
function enderface:gui_layoutes/shop/set_trade_data/reset_data

loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/buy_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/sell_item1
loot replace entity @n[tag=set_trade_data,distance=..2] container.1 loot enderface:guide/shop/gui/items/sell_item2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _

loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/buy_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/sell_item1
loot replace entity @n[tag=set_trade_data,distance=..2] container.1 loot enderface:guide/shop/gui/items/sell_item2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _

loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/buy_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/sell_item1
loot replace entity @n[tag=set_trade_data,distance=..2] container.1 loot enderface:guide/shop/gui/items/sell_item2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _

loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "stone_sword"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/buy_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "stone_sword"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/sell_item1
loot replace entity @n[tag=set_trade_data,distance=..2] container.1 loot enderface:guide/shop/gui/items/sell_item2
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "diamond"
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 64
data modify entity @n[tag=set_trade_data,distance=..2] Items[1].id set value "coal"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _

function enderface:gui_layoutes/shop/set_trade_data/single_data/none_item
function enderface:gui_layoutes/shop/set_trade_data/single_data/none_item

loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "iron_sword"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/buy_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "iron_sword"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/sell_item1
loot replace entity @n[tag=set_trade_data,distance=..2] container.1 loot enderface:guide/shop/gui/items/sell_item2
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "gold_ingot"
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
data modify entity @n[tag=set_trade_data,distance=..2] Items[1].id set value "terracotta"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _

function enderface:gui_layoutes/shop/set_trade_data/single_data/none_item
function enderface:gui_layoutes/shop/set_trade_data/single_data/none_item


loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "golden_sword"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/buy_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "golden_sword"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/sell_item1
loot replace entity @n[tag=set_trade_data,distance=..2] container.1 loot enderface:guide/shop/gui/items/sell_item2
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "diamond_block"
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].count set value 64
data modify entity @n[tag=set_trade_data,distance=..2] Items[1].id set value "diamond_block"
data modify entity @n[tag=set_trade_data,distance=..2] Items[1].count set value 64
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/add_trade
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/buy_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "golden_sword"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @n[tag=set_trade_data,distance=..2] container.0 loot enderface:guide/shop/gui/items/sell_item1
data modify entity @n[tag=set_trade_data,distance=..2] Items[0].id set value "dirt"
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _


data modify storage enderface:shop guide_shop_type_0 set from storage enderface:shop trade_data
