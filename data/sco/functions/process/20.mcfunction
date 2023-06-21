#>sco:process/20
#@within sco:main
execute if score runtime game matches 5 run tellraw @a "ショップ"
#テレポート
execute if score runtime game matches 1 as @a[team=!] run function sco:tp/shop

#プロセス終了
execute if score runtime game >= $shop game run data merge storage timer: {time:120,mode:1,name:'{"text":"残り時間 "}'}
execute if score runtime game >= $shop game store result storage timer: time int 1 run scoreboard players get $game_timer game
execute if score runtime game >= $shop game run function timer:input
execute if score runtime game >= $shop game run scoreboard players set process game 30
execute if score runtime game >= $shop game run scoreboard players set runtime game 0