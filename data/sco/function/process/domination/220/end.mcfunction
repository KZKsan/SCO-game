#>sco:process/domination/220/end
#@within sco:process/domination/220
scoreboard players set #process game 230
scoreboard players set #runtime game 0
data merge storage timer: {time:120,mode:1,name:{"text":"残り時間 "}}
execute store result storage timer: time int 1 run scoreboard players get #game_timer game
function timer:input