#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
#@within enderface:gui_layoutes/shop/set_trade_data/**
execute unless data storage sco:shop _.tag.preview_trade run function enderface:gui_layoutes/shop/set_trade_data/wirite_data/setup_trade

data modify storage sco:shop _.tag.preview_trade.buy append from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[]
data remove storage sco:shop _.tag.preview_trade.buy[].Slot
data remove entity @e[tag=set_trade_data,limit=1,distance=..2] Items