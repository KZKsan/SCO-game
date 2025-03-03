#>enderface:gui_layoutes/guide_book/shop/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.0 loot enderface:guide/shop/gui/type_0
loot replace entity @s enderchest.1 loot enderface:guide/shop/gui/type_1

loot replace entity @s enderchest.8 loot enderface:guide/shop/gui/reset_item

loot replace entity @s enderchest.18 loot enderface:guide/shop/gui/type_sell

loot replace entity @s enderchest.22 loot enderface:guide/shop/gui/kit_memory

#loot replace entity @s enderchest.1 loot enderface:guide/shop/1
#loot replace entity @s enderchest.10 loot enderface:guide/shop/2
#loot replace entity @s enderchest.11 loot enderface:guide/shop/3
#loot replace entity @s enderchest.12 loot enderface:guide/shop/4
#loot replace entity @s enderchest.13 loot enderface:guide/shop/5

loot replace entity @s enderchest.26 loot enderface:back_gui

data remove storage p-storage _[0].data.enderface.shop.preview_trade
data modify storage p-storage _[0].data.page set value 0