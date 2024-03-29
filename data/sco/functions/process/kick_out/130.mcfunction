#>sco:process/kick_out/130
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score #runtime game matches ..9 run scoreboard players add #runtime game 1
#初期化
execute if score #runtime game matches 1 run function sco:process/kick_out/game_reset
execute if score #runtime game matches 5 run tellraw @a[predicate=sco:team_join] [{"text": "対戦開始！","bold": true},{"score":{"name": "#m","objective": "timer"},"bold": true},{"text":"分後にサドンデスモードになります。","bold": true}]
execute if score #runtime game matches 1 run gamemode adventure @a[predicate=sco:team_join,team=!spectator]
execute if score #runtime game matches 1 as @a[predicate=sco:team_join,team=!spectator] run function sco:player/save_respawn_item
execute if score #runtime game matches 1 run function sco:player/result/reset_scores/all
execute if score #runtime game matches 1 run effect give @a[predicate=sco:team_join,team=!spectator] regeneration 5 100
execute if score #runtime game matches 1 as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
execute if score #runtime game matches 1 as @a[predicate=sco:team_join,team=!blue] run function sco:tp/respawn/save {name:"stage_red"}
execute if score #runtime game matches 1 as @a[team=blue] run function sco:tp/respawn/save {name:"stage_blue"}
#player_count
execute if score #runtime game matches 1 run function sco:player/team/team_info/team_score/set_display
execute if score #runtime game matches 1.. run function sco:player/team/team_info/team_score/



#切断処理
execute as @a[predicate=sco:team_join,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg.drop_item,team=!spectator] add rg.drop_item
tag @a[predicate=sco:team_join,tag=rg.shot_projectiles,team=!spectator] remove rg.shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.food_limit] add rg.food_limit
tag @a[predicate=sco:team_join,tag=rg.item_function_limit,team=!spectator] remove rg.item_function_limit
function sco:process/penalty_area/stage


#テレポート
execute if score #runtime game matches 1 as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/respawn/save {name:"stage_red"}
execute as @a[team=spectator,tag=!spectator] run function sco:tp/respawn/
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add rg.block_area
tag @a[team=spectator,tag=!spectator] add spectator
execute if score #runtime game matches 5 as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1


#ステージギミック
execute if score #runtime game matches 2 if data storage sco:data options{reset:true} run function sco:stage_data/reset
execute if score #runtime game matches 3.. if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick

#プロセス終了
execute if score #runtime game matches 10 as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1}] run function sco:process/kick_out/respawn/normal
execute if score #runtime game matches 10 run function sco:process/kick_out/game_flag/winner/scored
#execute if score #runtime game matches 10 if score #flag game matches 0 run function sco:process/kick_out/game_flag/winner/no_player
execute if score #score_time game matches 1.. run scoreboard players remove #score_time game 1
execute if score #score_time game matches 1 run function sco:player/team/team_info/team_score/empty

#さどんです
execute if score #mst_time timer matches -109 run function sco:process/kick_out/game_flag/winner/top
execute if score #mst_time timer matches -110 as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
execute if score #mst_time timer matches -110 run scoreboard players set #process game 131
execute if score #mst_time timer matches -110 run scoreboard players set #runtime game 0

#title @a actionbar [{"score":{"name": "#red_score","objective": "game"}},"-",{"score":{"name": "#blue_score","objective": "game"}}]