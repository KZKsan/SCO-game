#>sco_items:item_functions/alchemy_robe/multishot/left
#@within sco_items:item_functions/alchemy_robe/multishot/
data modify entity @s Item set from entity @e[tag=potion,type=#potion,limit=1,distance=..1] Item
data modify entity @s Owner set from entity @e[tag=potion,type=#potion,limit=1,distance=..1] Owner
data modify entity @s Tags set from entity @e[tag=potion,type=#potion,limit=1,distance=..1] Tags
tag @s remove potion
$execute positioned 0.0 0.0 0.0 rotated $(rot_y) $(rot_x) facing ^0.43 ^ ^1.0 positioned ^ ^ ^$(magnitude) run summon marker ^ ^ ^ {Tags:[set_data]}
data modify entity @s Motion set from entity @e[tag=set_data,type=marker,limit=1] Pos
kill @e[tag=set_data,type=marker]
damage @s 0.00001