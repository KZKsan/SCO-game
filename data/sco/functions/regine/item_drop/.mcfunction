#>sco:regine/item_drop/
#@within sco:main
#declare tag rg_drop_item
execute on origin store success score # _ if entity @s[tag=rg_drop_item]
scoreboard players set @s dropped_item 0
execute if score # _ matches 0 run return 0
data modify storage _ _ set from entity @s Item
execute unless data storage _ _.tag run data modify storage _ _.tag set value ""
execute on origin run function sco:regine/item_drop/return_item with storage _ _
kill