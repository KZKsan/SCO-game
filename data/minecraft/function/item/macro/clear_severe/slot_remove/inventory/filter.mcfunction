data modify storage _ item_data_inventory set from entity @s Inventory
$execute unless data storage _ item_data_inventory[{Slot:$(slot)b,id:"$(id)"}] run return fail
$execute if data storage _ item_data_str{components:""} if data storage _ item_data_inventory[{Slot:$(slot)b,components:{}}] run return fail
$execute unless data storage _ item_data_str{components:""} unless data storage _ item_data_inventory[{Slot:$(slot)b,components:{}}] run return fail
data modify storage _ item_data_flag.tf set value 1b
$execute unless data storage _ item_data_str{components:""} if data storage _ item_data_inventory[{Slot:$(slot)b,components:{}}] store success storage _ item_data_flag.tf byte 1 run function minecraft:item/macro/clear_severe/slot_remove/data_test with storage _ item_data_inventory[{Slot:$(slot)b}]
execute if data storage _ item_data_flag{tf:0b} run return fail
$execute store result score #item_macro.test_count _ run data get storage _ item_data_inventory[{Slot:$(slot)b}].count
execute if score #item_macro.test_count _ <= #item_macro.count _ run scoreboard players set @s remove_item_count 0
execute if score #item_macro.test_count _ > #item_macro.count _ run scoreboard players operation @s remove_item_count = #item_macro.test_count _
execute if score #item_macro.test_count _ > #item_macro.count _ run scoreboard players operation @s remove_item_count -= #item_macro.count _
$item modify entity @s $(slot_name) set_count_from_score
scoreboard players operation #item_macro.test_count _ -= @s remove_item_count
scoreboard players operation #item_macro.count _ -= #item_macro.test_count _