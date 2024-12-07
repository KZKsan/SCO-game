#>sco_items:main
#@within tag/function tick
## スコアのセットアップは "sco_items:setup" へ
#declare function sco_items:setup

## ここにアイテムのコマンドを作っていく(進捗を使う場合も "sco_items:" で作る)

# arrow
    #no_gravity_arrow
    execute as @e[type=#arrows,nbt={item:{components:{"minecraft:custom_data":{item_functions:{no_gravity_arrow:1b}}}}},tag=!item_function.no_gravity_arrow] run function sco_items:item_functions/no_gravity_arrow/set_data
    execute as @e[type=#arrows,nbt={item:{components:{"minecraft:custom_data":{item_functions:{no_gravity_arrow:1b}}}}},tag=item_function.no_gravity_arrow] at @s run function sco_items:item_functions/no_gravity_arrow/
    execute as @e[type=#arrows,nbt={item:{components:{"minecraft:custom_data":{item_functions:{no_gravity_arrow:1b}}}},inGround:1b}] at @s run function sco_items:item_functions/no_gravity_arrow/hit_block
    execute as @e[type=tnt,tag=no_gravity_arrow.bomb] at @s run function sco_items:item_functions/no_gravity_arrow/bomb/
    #cluster_bomb_arrow
    execute as @e[type=#arrows,nbt={item:{components:{"minecraft:custom_data":{item_functions:{cluster_bomb_arrow:1b}}}}},tag=!item_function.cluster_bomb_arrow] run function sco_items:item_functions/cluster_bomb_arrow/set_data
    execute as @e[type=#arrows,nbt={item:{components:{"minecraft:custom_data":{item_functions:{cluster_bomb_arrow:1b}}}}},tag=item_function.cluster_bomb_arrow] at @s run function sco_items:item_functions/cluster_bomb_arrow/
    execute as @e[type=#arrows,nbt={item:{components:{"minecraft:custom_data":{item_functions:{cluster_bomb_arrow:1b}}}},inGround:1b}] at @s run function sco_items:item_functions/cluster_bomb_arrow/hit_block
    execute as @e[type=tnt,tag=cluster_bomb_arrow.bomb] at @s run function sco_items:item_functions/cluster_bomb_arrow/bomb/

    execute as @e[type=#arrows,nbt={item:{components:{"minecraft:custom_data":{item_functions:{small_arrow:1b}}}}},tag=!item_function.small_arrow] run function sco_items:item_functions/small_arrow/set_data
    execute as @e[type=#arrows,tag=!item_function.piercing_arrow] if data entity @s item.components."minecraft:enchantments".levels."minecraft:piercing" run function sco_items:item_functions/enchant/piercing/set_nbt
    execute as @e[type=#arrows,nbt={item:{components:{"minecraft:custom_data":{item_functions:{safety_arrow:1b}}}}},tag=!item_function.safety_arrow] run function sco_items:item_functions/safety_arrow/set_data
    execute as @e[type=#arrows,tag=!item_function.set_p_vector.already] if data entity @s item.components."minecraft:custom_data".item_functions.set_p_vector run function #sco_items:item_functions/set_p_vector/arrow

# magic_bullet
    #throwing_limit
    scoreboard players remove @a[scores={throwing_limit.time=1..}] throwing_limit.time 1
    execute as @e[type=potion,tag=!item_function.throwing_limit.already] if data entity @s Item.components."minecraft:custom_data".item_functions.throwing_limit run function sco_items:item_functions/throwing_limit/
    execute as @a[scores={throwing_limit.time=1..}] run function sco_items:item_functions/throwing_limit/actionbar/flag
    #set_p_vector
    execute as @e[type=potion,tag=!item_function.set_p_vector.already] if data entity @s Item.components."minecraft:custom_data".item_functions.set_p_vector run function #sco_items:item_functions/set_p_vector/generic

    execute as @e[type=area_effect_cloud,tag=!already,nbt={potion_contents:{custom_effects:[{id:"minecraft:glowing",amplifier:49b}]}}] run function sco_items:item_functions/others/magic_bullet_of_light
    execute as @e[type=potion,nbt={Item:{components:{"minecraft:custom_data":{item_functions:{mini_healing_potion:1b}}}}}] positioned as @s run function sco_items:item_functions/others/mini_healing_potion
    execute as @e[type=potion,tag=!item_function.alchemy_robe.already] positioned as @s run function sco_items:item_functions/alchemy_robe/set_data

# custom_effect

    execute as @e[nbt={active_effects:[{id:"minecraft:unluck",amplifier:49b}]}] run function sco_items:item_functions/no_gravity_arrow/hit_entity
    execute as @e[nbt={active_effects:[{id:"minecraft:unluck",amplifier:50b}]}] run function sco_items:item_functions/cluster_bomb_arrow/hit_entity
    execute as @e[nbt={active_effects:[{id:"minecraft:unluck",amplifier:119b},{id:"minecraft:absorption",amplifier:9b}]}] run effect clear @s absorption

    ##不幸の効果はここで消去する    
    effect clear @e[nbt={active_effects:[{id:"minecraft:unluck"}]}] unluck

# crows_sorrow
    execute as @a unless score @s crows_sorrow_count matches 0.. run scoreboard players set @s crows_sorrow_count 0
    execute as @a unless score @s crows_sorrow_cooldown matches 0.. run scoreboard players set @s crows_sorrow_cooldown 0
    scoreboard players set @a[scores={crows_sorrow_cooldown=1}] crows_sorrow_count 0
    scoreboard players remove @a[scores={crows_sorrow_cooldown=1..}] crows_sorrow_cooldown 1
    execute as @a if score @s crows_sorrow_cooldown >= #crows_sorrow.set_slow sco_items.configs at @s run function sco_items:item_functions/crows_sorrow/step/particle
    execute as @a if score @s crows_sorrow_cooldown = #crows_sorrow.set_slow sco_items.configs run function sco_items:item_functions/crows_sorrow/step/slow
    execute as @a if score @s crows_sorrow_cooldown = #crows_sorrow.reset_time sco_items.configs run function sco_items:item_functions/crows_sorrow/step/reset

# hidden_cover
    execute as @e[tag=hidden_cover,tag=marker] at @s run function sco_items:item_functions/hidden_cover/leaves/


# cure_arrow
    effect clear @a[scores={cure_arrow=1..},gamemode=!spectator]
    scoreboard players remove @a[scores={cure_arrow=1..}] cure_arrow 1

# score
    ##lightning_hammer
    execute as @a unless score @s lightning_hammer_holding_time matches -2147483648..2147483647 run scoreboard players set @s lightning_hammer_holding_time 0
    scoreboard players add @a[scores={lightning_hammer_holding_time=..-1}] lightning_hammer_holding_time 1
    execute as @a[scores={lightning_hammer_holding_time=..-1}] run function sco_items:item_functions/lightning_hammer/actionbar/flag
    ##corpse_daemon
    execute as @a[scores={corpse_daemon.cooldown=1..}] run function sco_items:item_functions/corpse_daemon/cooldown/
    ##wind_mace
    execute as @a[scores={wind_mace.cooldown=1..}] run function sco_items:item_functions/wind_mace/cooldown
    ##trishula
    execute as @a unless score @s trishula.used matches -2147483648..2147483647 run scoreboard players set @s trishula.used 0
    execute as @a unless score @s trishula.used_time matches -2147483648..2147483647 run scoreboard players set @s trishula.used_time 0
    scoreboard players remove @a[scores={trishula.used=1..}] trishula.used 1
    scoreboard players add @a[scores={trishula.used=1,trishula.used_time=0..9}] trishula.used_time 1
    execute as @a[scores={trishula.used=0,trishula.used_time=10}] run function sco_items:item_functions/trishula/effect
    scoreboard players set @a[scores={trishula.used=0}] trishula.used_time 0

# smite_attack
    tag @a[tag=item_function.smite_attack.already] remove item_function.smite_attack.already

#actionbar
    execute as @a[tag=item_actionbar.end_flag,tag=!item_actionbar] run function sco_items:actionbar/end
    execute as @a[tag=item_actionbar] run function sco_items:actionbar/
