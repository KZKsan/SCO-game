#>sco:process/escalation/420
#@within sco:main
execute if score #runtime game matches ..5 run scoreboard players add #runtime game 1
execute if score #runtime game matches 1 run function sco:process/escalation/420/runtime_1
execute if score #runtime game matches 1.. run function sco:process/escalation/420/runtime_1__
execute if score #runtime game matches 5 run function sco:messeges/shop

#切断処理
execute as @a[team=spectator,scores={leave_game=1..}] run function sco:player/retune_lobby
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 411 run clear @s
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 411 run function sco_items:kit/escalation/lvl1/0
execute as @a[team=red] if score @s processID matches 411 run function sco:tp/respawn/save {name:"shop_red"}
execute as @a[team=blue] if score @s processID matches 411 run function sco:tp/respawn/save {name:"shop_blue"}
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 411 run function sco:tp/respawn/
execute as @a[scores={regione.penalty_area.penalty.time=1..}] if score @s processID matches 411 run function sco:regine/penalty_area/reset_flag/single
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 411 run scoreboard players set @s processID 420
#rg
function sco:process/penalty_area/shop
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.drop_item] add rg.drop_item
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.shot_projectiles] add rg.shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.food_limit] add rg.food_limit
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.item_function_limit] add rg.item_function_limit
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] water_breathing 1 10 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] fire_resistance 1 10 true

#テレポート
execute as @a[team=spectator,tag=!spectator] run function sco:process/spectator/

#アナウンス
execute if score #mst_time timer matches 003001 run function sco:messeges/shop_end
execute if score #mst_time timer matches 003001 run function sco:messeges/emerald
execute if score #mst_time timer matches 003001 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 003003 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 003005 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001501 run function sco:messeges/shop_end
execute if score #mst_time timer matches 001501 run function sco:messeges/emerald
execute if score #mst_time timer matches 001501 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001503 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001505 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1

#end
execute if score #mst_time timer matches -110 run function sco:process/escalation/420/end