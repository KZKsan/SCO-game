#>sco_items:item_functions/alchemy_hat/drink
#@within sco_items:item_functions/alchemy_hat/wearing

execute if items entity @s weapon.mainhand potion[!custom_data={item_functions:{alchemy_hat_potion:1b}}] run return run function sco_items:item_functions/alchemy_hat/copy_item/mainhand
execute if items entity @s weapon.offhand potion[!custom_data={item_functions:{alchemy_hat_potion:1b}}] run item modify entity @s weapon.offhand sco_items:item_functions/alchemy_hat/drink