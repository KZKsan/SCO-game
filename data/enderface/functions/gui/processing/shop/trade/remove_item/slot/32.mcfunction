#>enderface:gui/processing/shop/trade/remove_item/slot/32
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:32b}].Count
item modify entity @s inventory.23 set_count_from_score