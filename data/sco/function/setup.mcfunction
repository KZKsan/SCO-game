#>sco:setup
#@within minecraft:load

#>
#@internal
    scoreboard objectives add age dummy
    scoreboard objectives add game dummy
    scoreboard objectives add gameID dummy
    scoreboard objectives add processID dummy
    scoreboard objectives add dropped_item dummy
    scoreboard objectives add shot_projectiles dummy
    scoreboard objectives add respawnTime minecraft.custom:minecraft.time_since_death
    scoreboard objectives add leave_game custom:leave_game
    scoreboard objectives add food_level food
    scoreboard objectives add food_saturation_level dummy
    scoreboard objectives add regine.x1 dummy
    scoreboard objectives add regine.x2 dummy
    scoreboard objectives add regine.y1 dummy
    scoreboard objectives add regine.y2 dummy
    scoreboard objectives add regine.z1 dummy
    scoreboard objectives add regine.z2 dummy
    scoreboard objectives add regine.block_area.pos.x dummy
    scoreboard objectives add regine.block_area.pos.y dummy
    scoreboard objectives add regine.block_area.pos.z dummy
    scoreboard objectives add regione.penalty_area.penalty.time dummy
    scoreboard objectives add team_info.red dummy
    scoreboard objectives add team_info.blue dummy
    scoreboard objectives add team_info.spectator dummy
    scoreboard objectives add player.HP health
    scoreboard objectives add stage_object.match.0 dummy
    scoreboard objectives add stage_object.match.1 dummy
    scoreboard objectives add stage_object.match.2 dummy
    scoreboard objectives add stage_object.match.3 dummy
    scoreboard objectives add stage_object.lock dummy
    scoreboard objectives add stage_object.count.0 dummy
    scoreboard objectives add stage_object.count.1 dummy
    scoreboard objectives add stage_object.cooldown dummy
    scoreboard objectives add stage_object.configs dummy
    scoreboard objectives add stage_object.power_bullet.hit_count dummy
    scoreboard objectives add stage_object.power_bullet.last_hit_count dummy
    scoreboard objectives add stage_object.configs dummy
    scoreboard objectives add player_speed.x dummy
    scoreboard objectives add player_speed.z dummy
    scoreboard objectives add respawn.penalty dummy
    scoreboard objectives add respawn.fixed dummy
    scoreboard objectives add respawn.wait_time dummy
    #declare score_holder last gameID

scoreboard objectives modify player.HP displayname {text:"HP",color:"yellow"}

execute unless score #process game matches -2147483648..2147483647 run scoreboard players set #process game 0

#>
#@within sco:player/result/**
    scoreboard objectives add score_kill_count playerKillCount
    scoreboard objectives add score_kill_count.total dummy
    scoreboard objectives add score_death_count deathCount
    scoreboard objectives add score_death_count.total dummy
    scoreboard objectives add score_damage_dealt custom:damage_dealt
    scoreboard objectives add score_damage_dealt.total dummy
    scoreboard objectives add score_damage_teaken custom:damage_taken
    scoreboard objectives add score_damage_detected dummy
    scoreboard objectives add score_shot_arrows dummy
    scoreboard objectives add score_shot_arrows.total dummy
    scoreboard objectives add score_hit_arrows dummy
    scoreboard objectives add score_hit_arrows.total dummy
    scoreboard objectives add score_hit_rate dummy
    scoreboard objectives add score_jump_count custom:jump
    scoreboard objectives add score_jump_count.total dummy
    scoreboard objectives add score_fall_one_cm custom:fall_one_cm
    scoreboard objectives add score_fall_one_cm.total dummy
    scoreboard objectives add score_walk_cm custom:walk_one_cm
    scoreboard objectives add score_walk_cm.total dummy
    scoreboard objectives add score_sprint_cm custom:sprint_one_cm
    scoreboard objectives add score_sprint_cm.total dummy
    scoreboard objectives add score_sneak_time custom:sneak_time
    scoreboard objectives add score_sneak_time.total dummy
    scoreboard objectives add score_damage_blocked_by_shield custom:damage_blocked_by_shield
    scoreboard objectives add score_damage_blocked_by_shield.total dummy
    scoreboard objectives add shot_arrow dummy
    scoreboard objectives add can_pickup_arrow dummy

#>
#@within sco:**
#@within sco_items:**
    scoreboard objectives add respawn.penalty.damage_dealt custom:damage_dealt
    scoreboard objectives add respawn.penalty.kill playerKillCount
    scoreboard objectives add respawn.penalty.throwing_potion.splash used:splash_potion
    scoreboard objectives add respawn.penalty.throwing_potion.lingering used:lingering_potion
    scoreboard objectives add respawn.penalty.drinking_potion used:potion



data modify storage sco:data mvp_result.score_names set value \
    [\
    "score_jump_count",\
    "score_fall_one_cm",\
    "score_walk_cm",\
    "score_sprint_cm",\
    "score_sneak_time",\
    "score_damage_blocked_by_shield"\
]
data modify storage sco:data mvp_result.text_tables set value \
[\
    {name:{text:"跳王"},objective:{text:"Jump"}},\
    {name:{text:"落王"},objective:{text:"Fall Distance"}},\
    {name:{text:"と金"},objective:{text:"Walk"}},\
    {name:{text:"No.1 ランナー"},objective:{text:"Running"}},\
    {name:{text:"潜伏王"},objective:{text:"Time of Sneak"}},\
    {name:{text:"ブロック王"},objective:{text:"Block Damage with Sheild"}}\
]

scoreboard objectives add result_mvp dummy


team add red
team add blue
team add random_team
team add mode.waiting
team add spectator
team add mode.practice
team add mode.pvp

team modify red color red
team modify blue color blue
team modify spectator color gray
team modify random_team prefix {text:"[参加中]",color: "gold"}
team modify mode.waiting prefix {text: "[待機中]",color: "dark_purple"}
team modify mode.practice prefix {text:"[訓練中]",color: "green"}
team modify mode.practice friendlyFire false
team modify mode.pvp prefix {text:"[戦闘中]",color: "#AA2211"}
team modify mode.pvp friendlyFire true

#>
#@public
#declare storage sco:data



#>
#@public
#declare storage sco:config

execute unless data storage sco:config game.rule run data modify storage sco:config game.rule set value "death_match"
execute unless data storage sco:config game.friendlyfire run data modify storage sco:config game.friendlyfire set value false
execute unless data storage sco:config game.show_hp run data modify storage sco:config game.show_hp set value false
execute unless data storage sco:config game.show_enemy_team_name run data modify storage sco:config game.show_enemy_team_name set value true
execute unless data storage sco:config game.can_team_select run data modify storage sco:config game.can_team_select set value 0b
execute unless data storage sco:config game.can_pickup_arrows run data modify storage sco:config game.can_pickup_arrows set value 0b
execute unless data storage sco:config game.collision run data modify storage sco:config game.collision set value 1b
execute unless data storage sco:config game.join run data modify storage sco:config game.join set value 0b
execute unless data storage sco:config game.gm_mode run data modify storage sco:config game.gm_mode set value 0b
execute unless data storage sco:config stage run data modify storage sco:config stage set value "sco_random"

#>
#@public
#declare storage sco:input
#declare storage sco:inventory_histories


#>
# reset stage_tables
function sco:stage_data/stage_tables/death_match
function sco:stage_data/stage_tables/kick_out
function sco:stage_data/stage_tables/domination
function sco:stage_data/stage_tables/escalation
function sco:stage_data/stage_tables/end_gate

function sco:stage_data/stage_tables/random_reset/

#生成用予約エリア
forceload add -64 48 15 127

#その他設定
function sco:stage_data/stage/blank_fortress/object/configs