#>sco_items:item_functions/alchemy_hat/replace/mainhand
kill @e[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity]
summon item_display ~ ~ ~ {Tags:["item_functions.alchemy_hat.item_replace_entity"]}
function p-storage/get
data modify entity @n[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity,distance=..2] item set from storage p-storage _[0].data.sco_items.item_function.alchemy_hat.potion
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity,distance=..2] container.0
kill @n[type=item_display,tag=item_functions.alchemy_hat.item_replace_entity,distance=..2]
tag @s remove item_functions.alchemy_hat.replace_item.mainhand