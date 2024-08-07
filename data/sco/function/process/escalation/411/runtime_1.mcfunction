#>sco:process/escalation/411/runtime_1
#@within sco:process/escalation/411
team join red @a[team=blue]
gamemode adventure @a[team=red]
#アイテム配布
execute as @a[predicate=sco:team_join,team=!spectator] run function sco:process/give_visit_kit
execute as @a[predicate=sco:team_join] run function sco:tp/respawn/save {name:"stage_red"}
#プロセスID
scoreboard players set @a[predicate=sco:team_join] processID 411
execute as @a[predicate=sco:team_join] run function sco:tp/macro with storage sco:data respawn[{name:"stage_red"}]
execute as @a[team=spectator] run function sco:regine/block_area/reset_score