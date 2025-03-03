#>enderface:gui/processing/shop/trade/inventory_test
#@within enderface:gui/processing/shop/trade/**
execute store result score #_ _ run data get storage enderface:data shop.trade.sell
data modify storage enderface:data shop.inventory set from storage enderface:data now_inventory
data remove storage enderface:data shop.inventory[{count:0}]
data remove storage enderface:data shop.inventory[{Slot:100b}]
data remove storage enderface:data shop.inventory[{Slot:101b}]
data remove storage enderface:data shop.inventory[{Slot:102b}]
data remove storage enderface:data shop.inventory[{Slot:103b}]
data remove storage enderface:data shop.inventory[{Slot:-106b}]
execute store result score # _ run data get storage enderface:data shop.inventory
scoreboard players operation # _ += #_ _
execute store success storage enderface:data shop.full byte 1 if score # _ matches ..31
execute if data storage enderface:data shop{full:0b} run data modify storage enderface:data shop.success set value -1b