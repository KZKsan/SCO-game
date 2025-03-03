#>sco_items:item_functions/crows_sorrow/attack_to_shield
#@within advancement sco_items:item_functions/crows_sorrow/attack_to_shield

# reset attack state
    attribute @s attack_speed modifier remove sco_items:item_functions.crows_sorrow.step
    attribute @s attack_damage modifier remove sco_items:item_functions.crows_sorrow.step
# set crows_sorrow_count
    scoreboard players set @s crows_sorrow_count 2
# particle
    playsound block.anvil.place player @a ~ ~ ~ 0.7 0.5
    particle electric_spark ~ ~ ~ 0 0 0 0.8 5
# effect
    effect give @s weakness 1 9
    effect give @s mining_fatigue 1 9

# end
    advancement revoke @s only sco_items:item_functions/crows_sorrow/attack_to_shield