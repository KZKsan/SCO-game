#>sco_items:item_functions/throwing_limit/add_time
#@within sco_items:item_functions/throwing_limit/
tag @s add potion
execute on origin store result score @s throwing_limit.max_time store result score @s throwing_limit.time run data get entity @e[type=#potion,tag=potion,limit=1] Item.components."minecraft:custom_data".item_functions.throwing_limit
tag @s remove potion