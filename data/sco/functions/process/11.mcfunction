#>sco:process/11
#@within sco:main
execute if score runtime game matches 5 run tellraw @a "すてーじけんがく"
#てれぽーと
execute if score runtime game matches 1 as @a[team=!] run function sco:tp/stage/test

#プロセス終了
execute if score runtime game matches 200 run scoreboard players set process game 20
execute if score runtime game matches 200 run scoreboard players set runtime game 0
