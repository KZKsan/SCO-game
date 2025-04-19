#>enderface:gui_layoutes/shop/preview_trade/add_items_icon/sell
#@within enderface:gui_layoutes/shop/preview_trade/
loot replace entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0 loot enderface:shop/add_items/sell
data modify storage _ data_fetch.sell set from storage p-storage _[0].data.enderface.shop.preview_trade.data.sell
data remove storage _ data_fetch.sell[0]

#data remove storage c_str str
#data modify storage c_str str append value '[{"text":"","color":white,"italic":false},"'
#execute store result storage _ data_fetch.count int 1 run data get storage _ data_fetch.sell
#data modify storage c_str str append string storage _ data_fetch.count
#data modify storage c_str str append value '"'
#data modify storage c_str str append value ","
#data modify storage c_str str append value '{"text":"コ のアイテム"}]'
#function c_str/
#data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0].components."minecraft:lore" append from storage c_str str[0]
#item modify entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0 enderface:shop/click_to_others


data modify storage _ data set value [{text:"",color:"white",italic:false},{"text":"コ のアイテム"}]
data modify storage _ data2 set value {text:""}
execute store result storage _ data_fetch.count int 1 run data get storage _ data_fetch.sell
data modify storage _ data2.text set string storage _ data_fetch.count
tellraw KZK1945 {nbt:"data2",storage:"_"}
data modify storage _ data insert 1 from storage _ data2
#data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0].components."minecraft:lore" append from storage c_str str[0]
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0].components."minecraft:lore" append from storage _ data
item modify entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0 enderface:shop/click_to_others

data remove storage _ data
data remove storage _ data2

data remove storage _ data_fetch

item replace entity @s enderchest.17 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0