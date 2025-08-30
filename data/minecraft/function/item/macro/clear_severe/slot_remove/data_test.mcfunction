$data modify storage _ item_data_data_test.from set value $(components)
execute store success storage _ item_data_flag.tf byte 1 run data modify storage _ item_data_data_test.from set from storage _ item_data.components
execute if data storage _ item_data_flag{tf:1b} run return fail
data modify storage _ item_data_data_test.to set from storage _ item_data.components
$execute store success storage _ item_data_flag.tf byte 1 run data modify storage _ item_data_data_test.to set value $(components)
execute if data storage _ item_data_flag{tf:1b} run return fail
return 1