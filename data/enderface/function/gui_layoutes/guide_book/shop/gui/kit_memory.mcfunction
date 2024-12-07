#>enderface:gui_layoutes/kit_memory/
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.0 with paper[item_name='{"text": "1"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.0","fallback": "Kit選択ボタンです。","color": "white","italic": false}','{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.1","fallback": "最大3つまで保存できます。","color": "gray","italic": false}','{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.2","fallback": "[%s]でKitを選択","with": [{"keybind": "key.attack"}],"color": "white","italic": false}','{"text": "データなし"}'],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:1}}}]
#item replace entity @s enderchest.2 with paper[item_name='{"text": "3"}',lore=['{"text": "データなし"}'],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:3}}}]

#execute if data storage p-storage _[0].data.save_kit[{number:1}] run item replace entity @s enderchest.0 with book[item_name='{"text": "1"}',lore=['{"text": "保存済み"}'],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:1}}}]
item replace entity @s enderchest.1 with book[item_name='{"text": "2"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.0","fallback": "Kit選択ボタンです。","color": "white","italic": false}','{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.1","fallback": "最大3つまで保存できます。","color": "gray","italic": false}','{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.2","fallback": "[%s]でKitを選択","with": [{"keybind": "key.attack"}],"color": "white","italic": false}','{"text": "保存済み"}'],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:2}}}]
item replace entity @s enderchest.2 with book[item_name='{"text": "3"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.0","fallback": "Kit選択ボタンです。","color": "white","italic": false}','{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.1","fallback": "最大3つまで保存できます。","color": "gray","italic": false}','{"translate": "sco.guide.shop.gui.kit_memory.none_data_icon.descripsion.2","fallback": "[%s]でKitを選択","with": [{"keybind": "key.attack"}],"color": "white","italic": false}','{"text": "保存済み"}'],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:3}}}]

execute if data storage p-storage _[0].data{page:1} run function enderface:gui_layoutes/guide_book/shop/gui/kit_memory/slot_1
execute if data storage p-storage _[0].data{page:2} run function enderface:gui_layoutes/guide_book/shop/gui/kit_memory/slot_2
execute if data storage p-storage _[0].data{page:3} run function enderface:gui_layoutes/guide_book/shop/gui/kit_memory/slot_3

loot replace entity @s enderchest.26 loot enderface:shop/return_shop.0