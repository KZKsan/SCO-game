#>enderface:gui/processing/shop/trade/remove_item/slot/101
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:101b}].Count
item modify entity @s armor.legs remove_item