#>sco_items:item_functions/combat_cloth/have
#@within advancement sco_items:item_functions/combat_cloth/have
attribute @s minecraft:armor modifier remove sco_items:combat_cloth.armor
execute store result score #combat_cloth.count _ run clear @s *[custom_data={item_functions:{combat_cloth:1b}}] 0
execute if score #combat_cloth.count _ matches 4.. run scoreboard players set #combat_cloth.count _ 3
data modify storage sco_items:data set_data set value {}
execute store result storage sco_items:data set_data.armor int 3 run scoreboard players get #combat_cloth.count _
function sco_items:item_functions/combat_cloth/armor with storage sco_items:data set_data
scoreboard players reset #combat_cloth.count _
advancement revoke @s only sco_items:item_functions/combat_cloth/have