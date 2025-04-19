#>enderface:gui_layoutes/kit_memory/
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.0 with paper[item_name={"text": "1"},lore=[{"text": "データなし"}],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:1}}}]
item replace entity @s enderchest.1 with paper[item_name={"text": "2"},lore=[{"text": "データなし"}],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:2}}}]
item replace entity @s enderchest.2 with paper[item_name={"text": "3"},lore=[{"text": "データなし"}],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:3}}}]

execute if data storage p-storage _[0].data.save_kit[{number:1}] run item replace entity @s enderchest.0 with book[item_name={"text": "1"},lore=[{"text": "保存済み"}],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:1}}}]
execute if data storage p-storage _[0].data.save_kit[{number:2}] run item replace entity @s enderchest.1 with book[item_name={"text": "2"},lore=[{"text": "保存済み"}],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:2}}}]
execute if data storage p-storage _[0].data.save_kit[{number:3}] run item replace entity @s enderchest.2 with book[item_name={"text": "3"},lore=[{"text": "保存済み"}],custom_data={enderface_item:1b, click_events:{click_sounds:[{sound:"ui.button.click"}],page:{operation:"set",number:3}}}]

execute if data storage p-storage _[0].data{page:1} run function enderface:gui_layoutes/kit_memory/slot/1
execute if data storage p-storage _[0].data{page:2} run function enderface:gui_layoutes/kit_memory/slot/2
execute if data storage p-storage _[0].data{page:3} run function enderface:gui_layoutes/kit_memory/slot/3

loot replace entity @s enderchest.26 loot enderface:shop/return_shop.0