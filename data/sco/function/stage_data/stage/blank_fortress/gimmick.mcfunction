#>sco:stage_data/stage/blank_fortress/gimmick
#@within sco:stage_data/gimmick

execute as @e[type=item_display, tag=blank_fortress, tag=pickup_coal] at @s run function sco:stage_data/stage/blank_fortress/object/pickup_coal/
execute as @e[type=item_display, tag=blank_fortress, tag=cannon] at @s run function sco:stage_data/stage/blank_fortress/object/cannon/
execute as @e[type=block_display, tag=blank_fortress, tag=bomb] at @s run function sco:stage_data/stage/blank_fortress/object/bomb/
execute as @e[type=item_display, tag=blank_fortress, tag=thunder] at @s run function sco:stage_data/stage/blank_fortress/object/thunder/
execute as @e[type=item_display, tag=blank_fortress, tag=power_bullet] at @s run function sco:stage_data/stage/blank_fortress/object/power_bullet/
execute as @e[type=marker, tag=blank_fortress, tag=power_bullet_ammo] at @s run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/
execute if entity @e[type=marker,tag=blank_fortress,tag=power_bullet_ammo,tag=hit_player] run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/
execute unless entity @e[type=marker,tag=blank_fortress,tag=power_bullet_ammo,tag=hit_player] run scoreboard players set @a stage_object.power_bullet.last_hit_count 0
execute as @e[type=item_display, tag=blank_fortress, tag=shield] at @s run function sco:stage_data/stage/blank_fortress/object/shield/
execute as @e[type=item_display, tag=blank_fortress, tag=boost] at @s run function sco:stage_data/stage/blank_fortress/object/boost/
execute as @e[type=block_display, tag=blank_fortress, tag=crystal] at @s unless score @s stage_object.lock matches -2147483648..2147483647 run function sco:stage_data/stage/blank_fortress/object/crystal/