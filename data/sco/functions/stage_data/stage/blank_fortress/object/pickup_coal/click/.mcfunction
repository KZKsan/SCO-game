#>sco:stage_data/stage/blank_fortress/object/pickup_coal/click/
#@within sco:stage_data/stage/blank_fortress/object/pickup_coal/
#>
#@private
#declare loot_table sco_items:stage_items/fuel
execute on target run loot give @s loot sco_items:stage_items/fuel
execute on target run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1.8
scoreboard players set @s stage_object.count.0 60