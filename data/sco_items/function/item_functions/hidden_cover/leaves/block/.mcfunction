#>sco_items:item_functions/hidden_cover/leaves/block/
#@within sco_items:item_functions/hidden_cover/leaves/set
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/stone run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with stone 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/oak_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with oak_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/spruce_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with spruce_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/birch_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with birch_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/jungle_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with jungle_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/acacia_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with acacia_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/dark_oak_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with dark_oak_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/mangrove_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with mangrove_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/cherry_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with cherry_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/crimson_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with crimson_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/warped_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with warped_planks 1
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/grass_block run return run function sco_items:item_functions/hidden_cover/leaves/block/grass_block
execute if block ~ ~-0.15 ~ #sco_items:item_functions/hidden_cover/none_block run return run tag @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] add disable_copy
loot replace entity @n[type=item_display,tag=hidden_cover,tag=set_data] container.0 mine ~ ~-0.15 ~ diamond_pickaxe[enchantments={"silk_touch":1}]
execute unless block ~ ~-0.15 ~ #slabs unless block ~ ~-0.15 ~ #stairs unless block ~ ~-0.15 ~ #walls run return 1
execute if block ~ ~-0.15 ~ #slabs run data modify storage sco_items:data hidden_cover.id set string entity @n[type=item_display,tag=hidden_cover,tag=set_data] item.id 0 -5
execute if block ~ ~-0.15 ~ #stairs run data modify storage sco_items:data hidden_cover.id set string entity @n[type=item_display,tag=hidden_cover,tag=set_data] item.id 0 -7
execute if block ~ ~-0.15 ~ #walls run data modify storage sco_items:data hidden_cover.id set string entity @n[type=item_display,tag=hidden_cover,tag=set_data] item.id 0 -5
function sco_items:item_functions/hidden_cover/leaves/block/test/add_s with storage sco_items:data hidden_cover
function sco_items:item_functions/hidden_cover/leaves/block/test/add_block with storage sco_items:data hidden_cover
data modify entity @n[type=item_display,tag=hidden_cover,tag=set_data] item.id set from storage sco_items:data hidden_cover.id