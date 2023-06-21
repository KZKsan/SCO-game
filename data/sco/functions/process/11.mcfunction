#>sco:process/11
#@within sco:main
execute if score runtime game matches 5 run tellraw @a "すてーじけんがく"
#てれぽーと
execute if score runtime game matches 1 as @a[team=!] run function sco:tp/stage/test

#プロセス終了
execute if score runtime game >= $stage game run data merge storage timer: {time:120,mode:1,name:'{"text":"ショップ 残り時間 "}'}
execute if score runtime game >= $stage game store result storage timer: time int 1 run scoreboard players get $shop_timer game
execute if score runtime game >= $stage game run function timer:input
execute if score runtime game >= $stage game run scoreboard players set process game 20
execute if score runtime game >= $stage game run scoreboard players set runtime game 0