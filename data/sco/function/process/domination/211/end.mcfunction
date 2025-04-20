#>sco:process/domination/211/end
#@within sco:process/domination/211
scoreboard players set #process game 220
scoreboard players set #runtime game 0
execute as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
data merge storage timer: {time:120,mode:1,name:{"text":"装備準備時間 残り時間 "}}
execute store result storage timer: time int 1 run scoreboard players get #shop_timer game
function timer:input