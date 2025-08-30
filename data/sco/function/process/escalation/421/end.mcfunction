#>sco:process/escalation/421/end
#@within sco:process/escalation/421
scoreboard players set #process game 432
scoreboard players set #runtime game 0
function sco:player/result/total/reset/all
data merge storage timer: {time:120,mode:1,name:{"text":"残り時間 "}}
execute store result storage timer: time int 1 run scoreboard players get #game_timer game
function timer:input