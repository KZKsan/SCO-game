#>sco:stage_data/stage/blank_fortress/object/thunder/click/test
#@within sco:stage_data/stage/blank_fortress/object/thunder/
execute on target if data entity @s SelectedItem{id:"minecraft:coal",tag:{item_functions:{stage_item:{fuel:1b}}}} run return 1
return fail