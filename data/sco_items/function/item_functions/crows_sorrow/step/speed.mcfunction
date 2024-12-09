#>sco_items:item_functions/crows_sorrow/step/speed
#@within sco_items:item_functions/crows_sorrow/holding
function sco_items:item_functions/crows_sorrow/step/reset
scoreboard players operation @s crows_sorrow_cooldown = #crows_sorrow.set_cooltime sco_items.configs
scoreboard players add @s crows_sorrow_count 1
attribute @s movement_speed modifier add sco_items:item_functions.crows_sorrow.step 10 add_multiplied_base
attribute @s knockback_resistance modifier add sco_items:item_functions.crows_sorrow.step 1 add_value
attribute @s jump_strength modifier add sco_items:item_functions.crows_sorrow.step -1000 add_multiplied_total
attribute @s gravity modifier add sco_items:item_functions.crows_sorrow.step 100 add_multiplied_base


#effect give @s levitation 1 200
#scoreboard players set @s blast_count 4
#execute at @s rotated ~ 10 run function blast_motion/
particle cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.05 20
playsound entity.horse.jump record @a[distance=..16] ~ ~ ~ 0.8 2 0.3
playsound entity.horse.jump record @a[distance=..16] ~ ~ ~ 0.8 1.8 0.3