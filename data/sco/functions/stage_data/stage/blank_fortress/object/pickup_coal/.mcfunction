#>sco:stage_data/stage/blank_fortress/object/pickup_coal/
#@within 
execute unless score @s stage_object.cooldown matches -2147483648..2147483647 run scoreboard players set @s stage_object.cooldown 0
execute unless score #mst_time timer matches 010000 if score @s stage_object.cooldown > #blank_fortress.pickup_coal.last_cooltime stage_object.configs run scoreboard players operation @s stage_object.cooldown = #blank_fortress.pickup_coal.last_cooltime stage_object.configs
execute if data entity @s[scores={stage_object.cooldown=0}] interaction if function sco:stage_data/stage/blank_fortress/object/pickup_coal/click/test run function sco:stage_data/stage/blank_fortress/object/pickup_coal/click/
data remove entity @s interaction

execute if entity @s[scores={stage_object.cooldown=1..}] run function sco:stage_data/stage/blank_fortress/object/pickup_coal/cooldown