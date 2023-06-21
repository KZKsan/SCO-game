#>sco:process/timer_score
#@reads
#>
#@within sco:process/**
#declare score_holder $stage
#declare score_holder $shop
#declare score_holder $game
#declare score_holder $additional

scoreboard players set $stage game 620
scoreboard players set $shop game 2420
scoreboard players set $game game 6020
scoreboard players set $additional game 9999999

#declare score_holder $stage_timer
#declare score_holder $shop_timer
#declare score_holder $game_timer
#declare score_holder $additional_timer

scoreboard players set $stage_timer game 30
scoreboard players set $shop_timer game 120
scoreboard players set $game_timer game 300
scoreboard players set $additional_timer game 9999999