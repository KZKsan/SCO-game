#>enderface:gui/processing/game_settings/start_game/random_stage/set_stage
#@within enderface:gui/processing/game_settings/start_game/random_stage/
$data modify storage sco:input stage set from storage sco:data stage_tables.random[$(number)]
$data remove storage sco:data stage_tables.random[$(number)]