#>sco:process/kick_out/respawn/sudden_death
#@within sco:process/kick_out/**
function sco:regine/penalty_area/reset_flag/single
effect give @s regeneration 3 100
effect give @s absorption 5 9
effect give @s instant_health 60 100
execute if entity @s[team=red] run function sco:process/kick_out/game_flag/score/add/blue
execute if entity @s[team=blue] run function sco:process/kick_out/game_flag/score/add/red
function sco:tp/respawn/