#>sco:process/kick_out/140
#@within sco:main
scoreboard players add #runtime game 1
function timer:stop

#player_count
execute if score #runtime game matches 1.. run function sco:player/team/team_info/team_score/

execute as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1}] run function sco:process/kick_out/respawn/end
execute as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] run function sco:regine/block_area/reset_score
tag @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] add rg.block_area
execute as @a[team=spectator,tag=!spectator] run function sco:process/spectator/sudden_death
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] water_breathing 1 10 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] fire_resistance 1 10 true

execute if score #score_time game matches 1.. run scoreboard players remove #score_time game 1
execute if score #score_time game matches 1 if score #flag game matches 1 run function sco:player/team/team_info/team_score/winner/red
execute if score #score_time game matches 1 if score #flag game matches 2 run function sco:player/team/team_info/team_score/winner/blue

#ステージギミック
execute if score #runtime game matches ..199 run function sco:stage_data/stage_object/
execute if score #runtime game matches ..199 if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick

#ゲーム終了
execute if score #runtime game matches 100 run function sco:player/result/mvp/text_mvp
execute if score #runtime game matches 200 as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
execute if score #runtime game matches 200 run function sco:process/end