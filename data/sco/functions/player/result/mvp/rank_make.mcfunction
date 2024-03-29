#>sco:player/result/mvp/rank_make
#@within sco:player/result/mvp/text_mvp
execute as @a[predicate=sco:team_join,team=!spectator] run scoreboard players operation #MVP_kill result_mvp > @s score_kill_count
execute as @a[predicate=sco:team_join,team=!spectator] run scoreboard players operation #MVP_hit_arrow result_mvp > @s score_hit_arrows
execute as @a[predicate=sco:team_join,team=!spectator] run scoreboard players operation #MVP_damage result_mvp > @s score_damage_dealt
execute store result storage sco:data mvp_result.num int 1 run random value 0..5
#data modify storage sco:data mvp_result.num set value 0
function sco:player/result/mvp/other/select with storage sco:data mvp_result
function sco:player/result/mvp/other/comparator with storage sco:data mvp_result
execute as @a[predicate=sco:team_join,team=!spectator] if score @s score_kill_count = #MVP_kill result_mvp run tag @s add mvp_kill
execute as @a[predicate=sco:team_join,team=!spectator] if score @s score_hit_arrows = #MVP_hit_arrow result_mvp run tag @s add mvp_hit_arrow
execute as @a[predicate=sco:team_join,team=!spectator] if score @s score_damage_dealt = #MVP_damage result_mvp run tag @s add mvp_damage