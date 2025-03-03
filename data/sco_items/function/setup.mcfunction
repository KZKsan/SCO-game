#>sco_items:setup
#@within tag/function load

scoreboard objectives add lightning_hammer_holding_time dummy
scoreboard objectives add crows_sorrow_cooldown dummy
scoreboard objectives add crows_sorrow_count dummy
scoreboard objectives add using_damage_time.chest dummy
scoreboard objectives add hidden_cover.time dummy
scoreboard objectives add throwing_limit.time dummy
scoreboard objectives add throwing_limit.max_time dummy
scoreboard objectives add sneak_moving custom:crouch_one_cm
scoreboard objectives add moving custom:walk_one_cm
scoreboard objectives add trigger_death deathCount
scoreboard objectives add cure_arrow dummy
scoreboard objectives add corpse_daemon.cooldown dummy
scoreboard objectives add wind_mace.cooldown dummy
scoreboard objectives add sco_items.configs dummy
scoreboard objectives add trishula.used dummy
scoreboard objectives add trishula.used_time dummy
scoreboard objectives add potion.used dummy
scoreboard objectives add potion.used_time dummy

#>
#@internal
#declare storage sco_items:data

#>
#@within sco_items:**
#declare tag item_function.

#>
#@wihtin sco_items:item_functions/crows_sorrow/**
    #declare score_holder #crows_sorrow.blink_count
    #declare score_holder #crows_sorrow.set_cooltime
    #declare score_holder #crows_sorrow.reset_time
    #declare score_holder #crows_sorrow.set_slow
    #declare score_holder #crows_sorrow.can_blink
    #declare score_holder #crows_sorrow.can_blink.offset
scoreboard players set #crows_sorrow.blink_count sco_items.configs 2
scoreboard players set #crows_sorrow.set_cooltime sco_items.configs 100
scoreboard players set #crows_sorrow.set_slow sco_items.configs 96
scoreboard players set #crows_sorrow.reset_time sco_items.configs 76
scoreboard players set #crows_sorrow.can_blink sco_items.configs 95
scoreboard players operation #crows_sorrow.can_blink.offset sco_items.configs = #crows_sorrow.set_cooltime sco_items.configs
scoreboard players operation #crows_sorrow.can_blink.offset sco_items.configs -= #crows_sorrow.can_blink sco_items.configs



#>
#@wihtin sco_items:item_functions/lightning_hammer/**
    #declare score_holder #lightning_hammer.charge_time
    #declare score_holder #lightning_hammer.set_cooltime
scoreboard players set #lightning_hammer.charge_time sco_items.configs 40
scoreboard players set #lightning_hammer.set_cooltime sco_items.configs -80


#>
#@wihtin sco_items:item_functions/corpse_daemon/**
    #declare score_holder #corpse_daemon.set_cooltime
    #declare score_holder #corpse_daemon.stop_effect_time
scoreboard players set #corpse_daemon.set_cooltime sco_items.configs 160
scoreboard players set #corpse_daemon.stop_effect_time sco_items.configs 40

#>
#@wihtin sco_items:item_functions/wind_mace/**
    #declare score_holder #wind_mace.set_cooltime
scoreboard players set #wind_mace.set_cooltime sco_items.configs 40


#>
#@internal
    #declare damage_type sco_items:add_explosion_damage
    #declare damage_type sco_items:add_player_explosion_damage