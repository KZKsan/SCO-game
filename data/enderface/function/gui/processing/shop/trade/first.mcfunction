#>enderface:gui/processing/shop/trade/first
#@within enderface:gui/processing/shop/trade/
## check inventory items
#data modify storage enderface:data shop.debug.0 set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".trade
data modify storage enderface:data shop.success set value 1b
execute if entity @s[tag=!no_cost] run function enderface:gui/processing/shop/trade/buy/
#data modify storage enderface:data shop.debug.1 set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".trade
execute if data storage enderface:data shop{success:1b} run function enderface:gui/processing/shop/trade/inventory_test
## buy
execute if entity @s[tag=!no_cost] if data storage enderface:data shop{success:1b} run function enderface:gui/processing/shop/trade/remove_item/
## sell
#execute if data storage enderface:data shop{success:1b} run tellraw @p {"nbt":"shop","storage":"enderface:data"}
execute if data storage enderface:data shop{success:1b} run function enderface:gui/processing/shop/trade/sell/
execute if data storage enderface:data shop{success:1b} run playsound entity.experience_orb.pickup record @s ~ ~ ~ 0.5 2
execute unless data storage enderface:data shop{success:1b} run playsound block.note_block.bass record @s ~ ~ ~ 0.5 0.5
execute if data storage enderface:data shop{success:-1b} run tellraw @s {"text": ">持ち物に十分な空きがありません。\n(6つ以上のスロットは空いている必要があります)","color": "red"}
## loop
scoreboard players remove #i _ 1
execute if score #i _ matches 1.. if data storage enderface:data shop{success:1b} run function enderface:gui/processing/shop/trade/loop