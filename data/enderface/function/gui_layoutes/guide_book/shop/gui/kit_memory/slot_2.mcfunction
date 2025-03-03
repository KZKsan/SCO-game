#>enderface:gui_layoutes/guide_book/shop/gui/kit_memory/slot_2
#@within enderface:gui_layoutes/guide_book/shop/gui/kit_memory
item modify entity @s enderchest.1 enderface:selected
function enderface:gui_layoutes/guide_book/shop/gui/kit_memory/save

item replace entity @s enderchest.18 with glow_item_frame[item_name='{"text": ">ロード","italic": false,"color": "green"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.load_icon.descripsion.0","fallback": "[%s]でKitをロード","with": [{"keybind": "key.attack"}],"color": "white","italic": false}'],custom_data={enderface_item:1b}]
item replace entity @s enderchest.8 with lava_bucket[item_name='{"text": ">削除","italic": false,"color": "dark_red"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.delete_icon.descripsion.0","fallback": "[%s]でKitを消去","with": [{"keybind": "key.attack"}],"color": "white","italic": false}'],custom_data={enderface_item:1b}]

item replace entity @s enderchest.9 with iron_sword[item_name='{"text": ">Kitプレビュー","italic": false,"color": "white"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.preview_icon.descripsion.0","fallback": "保存したKitのホットバー部分が確認できる","color": "white","italic": false}'],custom_data={enderface_item:1b},attribute_modifiers={show_in_tooltip:false,modifiers:[]}]
item replace entity @s enderchest.10 with bow[item_name='{"text": ">Kitプレビュー","italic": false,"color": "white"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.preview_icon.descripsion.0","fallback": "保存したKitのホットバー部分が確認できる","color": "white","italic": false}'],custom_data={enderface_item:1b}]
item replace entity @s enderchest.16 with arrow[item_name='{"text": ">Kitプレビュー","italic": false,"color": "white"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.preview_icon.descripsion.0","fallback": "保存したKitのホットバー部分が確認できる","color": "white","italic": false}'],custom_data={enderface_item:1b}] 16
item replace entity @s enderchest.17 with dirt[item_name='{"text": ">Kitプレビュー","italic": false,"color": "white"}',lore=['{"translate": "sco.guide.shop.gui.kit_memory.preview_icon.descripsion.0","fallback": "保存したKitのホットバー部分が確認できる","color": "white","italic": false}'],custom_data={enderface_item:1b}] 64