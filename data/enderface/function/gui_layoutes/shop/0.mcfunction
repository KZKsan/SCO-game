#>enderface:gui_layoutes/shop/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air
loot replace entity @s enderchest.0 loot enderface:shop/category_icon/weapons
loot replace entity @s enderchest.1 loot enderface:shop/category_icon/armors
loot replace entity @s enderchest.2 loot enderface:shop/category_icon/arrows
loot replace entity @s enderchest.3 loot enderface:shop/category_icon/potions
loot replace entity @s enderchest.4 loot enderface:shop/category_icon/others
loot replace entity @s enderchest.18 loot enderface:shop/category_icon/sell_item
loot replace entity @s enderchest.8 loot enderface:shop/category_icon/reset_item/first

execute unless data storage sco:input game{rule:"escalation"} run loot replace entity @s enderchest.22 loot enderface:shop/category_icon/kit_memory
execute if data storage sco:input game{rule:"escalation"} run loot replace entity @s[team=!red,team=!blue] enderchest.22 loot enderface:shop/category_icon/kit_memory

item replace entity @s[team=mode.practice] enderchest.26 with glistering_melon_slice[item_name={"text": ">体力を全回復する","italic": false,"color": "gold"},lore=[{"text": ">クリックでリセットする。","color": "gray"}],custom_data={click_events:{click_sounds:[{sound:"ui.button.bell"}],healing:1b},enderface_item:1b}]

data remove storage p-storage _[0].data.enderface.shop.preview_trade
data modify storage p-storage _[0].data.page set value 0