#>sco_items:item_functions/alchemy_hat/copy_item/mainhand
kill @e[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity]
summon item_display ~ ~ ~ {Tags:["item_functions.alchemy_hat.item_replace_entity"]}
item replace entity @n[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity,distance=..2] container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with glass_bottle[custom_data={item_functions:{alchemy_hat_potion:true}}]
item modify entity @n[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity,distance=..2] container.0 sco_items:item_functions/alchemy_hat/drink
#item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity,distance=..2] container.0
function p-storage/get
data modify storage p-storage _[0].data.sco_items.item_function.alchemy_hat.potion set from entity @n[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity,distance=..2] item
kill @n[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity,distance=..2]
tag @s add item_functions.alchemy_hat.replace_item.mainhand