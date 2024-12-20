#>sco_items:actionbar/
#@public
function p-storage/get

execute if data storage p-storage _[0].data.item_actionbar_flag{crows_sorrow:1b} run function sco_items:item_functions/crows_sorrow/actionbar/
execute if data storage p-storage _[0].data.item_actionbar_flag{hidden_cover:1b} run function sco_items:item_functions/hidden_cover/actionbar/
execute if data storage p-storage _[0].data.item_actionbar_flag{lightning_hammer:1b} run function sco_items:item_functions/lightning_hammer/actionbar/
execute if data storage p-storage _[0].data.item_actionbar_flag{corpse_daemon:1b} run function sco_items:item_functions/corpse_daemon/actionbar/
execute if data storage p-storage _[0].data.item_actionbar_flag{show_durability:["chest"]} run function sco_items:item_functions/show_durability/chest/actionbar
execute if data storage p-storage _[0].data.item_actionbar_flag{throwing_limit:1b} run function sco_items:item_functions/throwing_limit/actionbar/
execute if data storage p-storage _[0].data.item_actionbar_flag{wind_mace:1b} run function sco_items:item_functions/wind_mace/actionbar/

data modify storage c_str str set from storage p-storage _[0].data.item_actionbar
function c_str/
data remove storage _ data_fetch
data modify storage _ data_fetch.str set from storage c_str str[0]
function sco_items:actionbar/macro with storage _ data_fetch
data remove storage p-storage _[0].data.item_actionbar
data remove storage p-storage _[0].data.item_actionbar_flag
tag @s remove item_actionbar
tag @s[tag=!item_actionbar.end_flag] add item_actionbar.end_flag