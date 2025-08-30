#>sco_items:item_functions/using_damage/chest
#@within advancement sco_items:item_functions/using_damage/chest
data modify storage sco_items:data using_damage set from entity @s equipment.chest.components."minecraft:custom_data".item_functions.using_damage
data remove storage _ data_fetch
data modify storage _ data_fetch.id set from entity @s equipment.chest.id
scoreboard players set # _ 0
execute store success score # _ if function sco_items:item_functions/using_damage/check_nbt run function sco_items:item_functions/using_damage/math/tick
execute if score # _ matches 1 run function item/stop_change_sounds
execute store result score #using_damage.max_damage _ run function item/damage_data
execute store result score #using_damage.now_damage _ run data get entity @s equipment.chest.components."minecraft:damage"
execute if score #using_damage.now_damage _ >= #using_damage.max_damage _ run function sco_items:item_functions/using_damage/math/break
advancement revoke @s only sco_items:item_functions/using_damage/chest