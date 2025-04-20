#>sco:process/kick_out/110
#@within sco:main
#gameIDを設定
function sco:game_id/set

#チーム振り分け
execute as @a[team=random_team] run function sco:player/random_team
execute if entity @p[team=mode.waiting] run function sco:player/join_waiting
tag @a[team=red] add join_red
tag @a[team=blue] add join_blue
experience set @a 0 levels
experience set @a 0 points
execute as @a[predicate=sco:team_join,team=!spectator] run function sco:gamemode_histories/save
gamemode adventure @a[predicate=sco:team_join,team=!spectator]
function sco:player/team/team_info/joined_count/set_display
function sco:player/team/team_info/joined_count/

data remove storage sco:data penalty_area.struct
execute if data storage sco:data penalty_area.input.death[0] run function sco:regine/penalty_area/death/input/
execute unless data storage sco:data penalty_area.input.penalty[0] if data storage sco:data penalty_area.input.death[0] run data modify storage sco:data penalty_area.input.penalty set from storage sco:data penalty_area.input.death
execute if data storage sco:data penalty_area.input.penalty[0] run function sco:regine/penalty_area/penalty/input/
function sco:regine/penalty_area/reset_flag/all

data remove storage sco:data block_area.struct
execute if data storage sco:data block_area.input[0] run function sco:regine/block_area/input/

#プロセス終了
scoreboard players set #process game 111
scoreboard players set #runtime game 0
data merge storage timer: {time:30,mode:1,name:{"text":"ステージ下見時間 残り時間 "}}
execute store result storage timer: time int 1 run scoreboard players get #stage_timer game
function timer:input