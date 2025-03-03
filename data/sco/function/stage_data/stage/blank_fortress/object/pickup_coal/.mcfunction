#>sco:stage_data/stage/blank_fortress/object/pickup_coal/
#@within 
execute unless score @s stage_object.cooldown matches -2147483648..2147483647 run scoreboard players set @s stage_object.cooldown 0
execute if score #mst_time timer matches 010000 if score @s stage_object.cooldown > #blank_fortress.pickup_coal.last_cooltime stage_object.configs run scoreboard players operation @s stage_object.cooldown = #blank_fortress.pickup_coal.last_cooltime stage_object.configs
execute if entity @s[scores={stage_object.cooldown=0}] on passengers if data entity @s[type=interaction] interaction if function sco:stage_data/stage/blank_fortress/object/pickup_coal/click/test on vehicle run function sco:stage_data/stage/blank_fortress/object/pickup_coal/click/
execute on passengers run data remove entity @s[type=interaction] interaction

execute if entity @s[scores={stage_object.cooldown=1..}] run function sco:stage_data/stage/blank_fortress/object/pickup_coal/cooldown