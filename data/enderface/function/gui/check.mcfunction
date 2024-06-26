#>enderface:gui/check
#@within enderface:gui/**
function p-storage/get
## intaract = 1b(click), 2b(shift + click), 3b(offhand), 4b(throw away), 0b(other)
execute store success storage enderface:data gui_intaract.intaract byte 3 if items entity @s weapon.offhand *[custom_data~{enderface_item:1b}]
execute if data storage enderface:data gui_intaract{intaract:0b} store success storage enderface:data gui_intaract.intaract byte 2 if items entity @s inventory.* *[custom_data~{enderface_item:1b}]
execute if data storage enderface:data gui_intaract{intaract:0b} store success storage enderface:data gui_intaract.intaract byte 2 if items entity @s hotbar.* *[custom_data~{enderface_item:1b}]
execute if data storage enderface:data gui_intaract{intaract:0b} store success storage enderface:data gui_intaract.intaract byte 1 if items entity @s player.cursor *[custom_data~{enderface_item:1b}]
execute if data storage enderface:data gui_intaract{intaract:0b} at @s anchored eyes store success storage enderface:data gui_intaract.intaract byte 4 run kill @e[predicate=enderface:gui_item,distance=..1.5,limit=1,sort=nearest]
## click = 1b(intaract = 1b,2b) 0b(other)
execute store result storage enderface:data gui_intaract.click byte 1 if data storage enderface:data gui_intaract{intaract:1b}
execute if data storage enderface:data gui_intaract{click:0b} store result storage enderface:data gui_intaract.click byte 1 if data storage enderface:data gui_intaract{intaract:2b}


## item detector
function enderface:gui/check/slot

## test
#function enderface:gui/test

## 
clear @s *[custom_data~{enderface_item:1b}]
data modify storage enderface:data gui_name set from storage p-storage _[0].data.gui_name
execute unless data storage p-storage _[0].data.gui_history run data modify storage p-storage _[0].data.gui_history set value []
data modify storage enderface:data gui_history set from storage p-storage _[0].data.gui_history
execute at @s run function enderface:gui/processing/main



function enderface:gui_layoutes/load