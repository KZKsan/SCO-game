#>sco:process/end
#@within sco:process/**
scoreboard players set #process game 0
scoreboard players set #runtime game -1
scoreboard players reset last gameID
scoreboard players reset @a gameID
tag @a remove join_red
tag @a remove join_blue
tag @a[predicate=sco:team_join,team=!spectator,tag=rg.drop_item] remove rg.drop_item
tag @a[predicate=sco:team_join,team=!spectator,tag=rg.shot_projectiles] remove rg.shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=rg.food_limit] remove rg.food_limit
tag @a[predicate=sco:team_join,team=!spectator,tag=rg.item_function_limit] remove rg.item_function_limit
tag @a[predicate=sco:team_join,team=!spectator,tag=rg.penalty_area.penalty] remove rg.penalty_area.penalty
tag @a[predicate=sco:team_join,team=!spectator,tag=rg.penalty_area.death] remove rg.penalty_area.death
execute as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
execute as @e[type=trident] if function sco:regine/thrown_tridents/test run kill
effect clear @a[predicate=sco:team_join]

# function sco:player/result/mvp/text_mvp

function sco:stage_data/stage_object/set_match

execute as @a[predicate=sco:team_join] run function sco:player/retune_lobby
function sco:stage_data/generic_settings
function timer:stop
function sco:player/team/team_info/off
scoreboard objectives setdisplay below_name
function sco:player/team/show_enemy_team_name/true
function sco:player/team/collision/true
data remove storage sco:data penalty_area.struct
data remove storage sco:input game
fill -64 -55 48 15 -37 127 air