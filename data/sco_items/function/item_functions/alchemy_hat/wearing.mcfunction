#>sco_items:item_functions/alchemy_hat/wearing
#@within sco_items:main
execute if entity @s[tag=item_functions.alchemy_hat.replace_item.mainhand] run function sco_items:item_functions/alchemy_hat/replace/mainhand
execute if score @s potion.used_time matches 1.. run function sco_items:item_functions/alchemy_hat/drink
advancement revoke @s only sco_items:item_functions/alchemy_hat/wearing