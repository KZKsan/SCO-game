#>sco:process/escalation/411/end
#@within sco:process/escalation/411
execute as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
scoreboard players set #process game 420
scoreboard players set #runtime game 0
execute as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
data merge storage timer: {time:60,mode:1,name:{"text":"装備準備時間 残り時間 "}}
#execute store result storage timer: time int 1 run scoreboard players get #shop_timer game
function timer:input