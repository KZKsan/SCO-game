#>sco:stage_data/stage/blank_fortress/object/pickup_coal/click/
#@within sco:stage_data/stage/blank_fortress/object/pickup_coal/
#>
#@private
#declare loot_table sco_items:stage_items/fuel
execute on passengers run tag @s[type=interaction] add actived_interaction
execute as @n[type=interaction,tag=actived_interaction] on target run loot give @s loot sco_items:stage_items/fuel
execute as @n[type=interaction,tag=actived_interaction] on target run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1.8
execute if score #mst_time timer matches 010001.. run scoreboard players operation @s stage_object.cooldown = #blank_fortress.pickup_coal.cooltime stage_object.configs
execute unless score #mst_time timer matches 010001.. run scoreboard players operation @s stage_object.cooldown = #blank_fortress.pickup_coal.last_cooltime stage_object.configs
tag @n[type=interaction,tag=actived_interaction] add actived_interaction