#>sco_items:item_functions/enchant/flammability/hurt
#@within advancement sco_items:item_functions/enchant/flammability/hurt
execute unless data entity @s equipment.feet.components."minecraft:enchantments"."sco_items:flammability" unless data entity @s equipment.legs.components."minecraft:enchantments"."sco_items:flammability" unless data entity @s equipment.chest.components."minecraft:enchantments"."sco_items:flammability" unless data entity @s equipment.head.components."minecraft:enchantments"."sco_items:flammability" run return run advancement revoke @s only sco_items:item_functions/enchant/flammability/hurt

#declare damage_type sco_items:item_functions/enchant/flammability/on_fire
#declare damage_type sco_items:item_functions/enchant/flammability/in_fire
#declare damage_type sco_items:item_functions/enchant/flammability/hot_floor
#declare damage_type sco_items:item_functions/enchant/flammability/lava

scoreboard players set #lvl _ 0
scoreboard players set # _ 0
execute if data entity @s equipment.feet.components."minecraft:enchantments"."sco_items:flammability" store result score # _ run data get entity @s equipment.feet.components."minecraft:enchantments"."sco_items:flammability"
scoreboard players operation #lvl _ += # _
scoreboard players set # _ 0
execute if data entity @s equipment.legs.components."minecraft:enchantments"."sco_items:flammability" store result score # _ run data get entity @s equipment.legs.components."minecraft:enchantments"."sco_items:flammability"
scoreboard players operation #lvl _ += # _
scoreboard players set # _ 0
execute if data entity @s equipment.chest.components."minecraft:enchantments"."sco_items:flammability" store result score # _ run data get entity @s equipment.chest.components."minecraft:enchantments"."sco_items:flammability"
scoreboard players operation #lvl _ += # _
scoreboard players set # _ 0
execute if data entity @s equipment.head.components."minecraft:enchantments"."sco_items:flammability" store result score # _ run data get entity @s equipment.head.components."minecraft:enchantments"."sco_items:flammability"
scoreboard players operation #lvl _ += # _
data remove storage sco_items:data data_fetch
execute store result storage sco_items:data data_fetch.damage double 1 run scoreboard players get #lvl _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={on_fire=true}}] store result storage sco_items:data data_fetch.damage double 1 run scoreboard players get #lvl _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={in_fire=true}}] store result storage sco_items:data data_fetch.damage double 1 run scoreboard players get #lvl _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={in_soul_fire=true}}] store result storage sco_items:data data_fetch.damage double 2 run scoreboard players get #lvl _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={hot_floor=true}}] store result storage sco_items:data data_fetch.damage double 1 run scoreboard players get #lvl _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={lava=true}}] store result storage sco_items:data data_fetch.damage double 4 run scoreboard players get #lvl _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={on_fire=true}}] run data modify storage sco_items:data data_fetch.id set value "on_fire"
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={in_fire=true}}] run data modify storage sco_items:data data_fetch.id set value "in_fire"
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={in_soul_fire=true}}] run data modify storage sco_items:data data_fetch.id set value "in_fire"
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={hot_floor=true}}] run data modify storage sco_items:data data_fetch.id set value "hot_floor"
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={lava=true}}] run data modify storage sco_items:data data_fetch.id set value "lava"

function sco_items:item_functions/enchant/flammability/macro with storage sco_items:data data_fetch
advancement revoke @s only sco_items:item_functions/enchant/flammability/hurt