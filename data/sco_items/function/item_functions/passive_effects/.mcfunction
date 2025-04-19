#>sco_items:item_functions/passive_effects/
#@within advancement sco_items:item_functions/set_effects/test
execute if entity @s[advancements={sco_items:item_functions/passive_effects/test={chest=true}}] if data entity @s equipment.chest.components."minecraft:custom_data".item_functions.passive_effects run function sco_items:item_functions/passive_effects/chest
execute if entity @s[advancements={sco_items:item_functions/passive_effects/test={feet=true}}] if data entity @s equipment.feet.components."minecraft:custom_data".item_functions.passive_effects run function sco_items:item_functions/passive_effects/feet
advancement revoke @s only sco_items:item_functions/passive_effects/test