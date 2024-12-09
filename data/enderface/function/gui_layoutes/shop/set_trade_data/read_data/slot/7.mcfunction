#>enderface:gui_layoutes/shop/set_trade_data/read_data/slot/7
#@within enderface:gui_layoutes/shop/set_trade_data/read_data/
execute if data storage enderface:shop _[7].none run return run data modify storage enderface:shop _[7].preview_trade set value []
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0] set from storage enderface:shop _[7].icon
item replace entity @s enderchest.19 from entity @e[tag=set_trade_data,limit=1,distance=..2] container.0