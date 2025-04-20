#>sco:process/escalation/441/end
#@within sco:process/escalation/441
scoreboard players set #process game 421
scoreboard players set #runtime game 0
execute as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
data merge storage timer: {time:120,mode:1,name:{"text":"装備準備時間 残り時間 "}}
execute store result storage timer: time int 1 run scoreboard players get #shop_timer game
function timer:input

title @a[predicate=sco:team_join,team=!spectator] times 10 40 10
execute if score #flag game matches 1 run title @a[team=blue] title [{"text":"LEVELE UP!","bold": true, "color": "green"}]
execute if score #flag game matches 1 run title @a[team=red] title [{"text":"LEVELE KEEP→","bold": true, "color": "dark_aqua"}]
execute if score #flag game matches 2 run title @a[team=red] title [{"text":"LEVELE UP!","bold": true, "color": "green"}]
execute if score #flag game matches 2 run title @a[team=blue] title [{"text":"LEVELE KEEP→","bold": true, "color": "dark_aqua"}]