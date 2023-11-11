#>sco:process/end
#@within sco:process/**
tellraw @a "終了"

scoreboard players set process game 0
scoreboard players set runtime game -1
scoreboard players reset last gameID
scoreboard players reset @a gameID
tag @a remove join_red
tag @a remove join_blue
tag @a[predicate=sco:team_join,team=!spectator,tag=rg_drop_item] remove rg_drop_item
tag @a[predicate=sco:team_join,team=!spectator,tag=rg_shot_projectiles] remove rg_shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=rg_food_limit] add rg_food_limit
effect clear @a[predicate=sco:team_join]
execute as @a[team=!] run function sco:player/retune_lobby
function sco:stage_data/generic_settings
function timer:stop