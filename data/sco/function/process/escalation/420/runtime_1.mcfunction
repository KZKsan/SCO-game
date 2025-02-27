#>sco:process/escalation/420/runtime_1
#@within sco:process/escalation/420
team join red @a[tag=join_red]
team join blue @a[tag=join_blue]
gamemode adventure @a[gamemode=!adventure,predicate=sco:team_join,team=!spectator]
clear @a[predicate=sco:team_join,team=!spectator]
data modify storage sco:data escalation.pattern set value [0,0,0]
execute store result storage sco:data escalation.pattern[0] int 1 run random value 0..3
execute store result storage sco:data escalation.pattern[1] int 1 run random value 0..4
execute store result storage sco:data escalation.pattern[2] int 1 run random value 0..1
execute store result storage sco:data escalation.loot.red_lvl int 1 run scoreboard players get #blue_score game
execute store result storage sco:data escalation.loot.blue_lvl int 1 run scoreboard players get #red_score game
function sco:process/escalation/item_pattern with storage sco:data escalation.loot
execute as @a[predicate=sco:team_join,team=!spectator] run function sco:process/escalation/item with storage sco:data escalation.loot
execute as @a[predicate=sco:team_join,team=!blue] run function sco:tp/respawn/save {name:"shop_red"}
execute as @a[team=blue] run function sco:tp/respawn/save {name:"shop_blue"}
execute as @a[team=spectator] run function sco:regine/block_area/reset_score
execute as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
#プロセスID
scoreboard players set @a[predicate=sco:team_join] processID 420

execute as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute as @a[team=spectator] run function sco:regine/block_area/reset_score