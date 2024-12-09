#>sco:regine/shot_projectiles/
#@within sco:main
#declare tag rg.shot_projectiles
execute on origin store success score # _ if entity @s[type=player,tag=rg.shot_projectiles]
scoreboard players set @s shot_projectiles 0
execute if score # _ matches 0 run return 0
execute if entity @s[type=fishing_bobber] run return run kill
execute if entity @s[nbt={item:{components:{"minecraft:intangible_projectile":{}}}}] run return run kill
execute if entity @s[nbt={FireworksItem:{components:{"minecraft:intangible_projectile":{}}}}] run return run kill
execute if entity @s[predicate=sco:regine/shot_projectiles/small,predicate=!sco:regine/shot_projectiles/other] run data modify storage _ item_data set from entity @s item
execute if entity @s[predicate=!sco:regine/shot_projectiles/small,predicate=!sco:regine/shot_projectiles/other] run data modify storage _ item_data set from entity @s Item
execute if entity @s[type=wind_charge] run data modify storage _ item_data set value {id:"minecraft:wind_charge",count:1}
execute if entity @s[type=firework_rocket] run data modify storage _ item_data set from entity @s FireworksItem
#tellraw @p {"entity":"@s","nbt": "FireworksItem"}
execute on origin run function item/macro/give/
kill