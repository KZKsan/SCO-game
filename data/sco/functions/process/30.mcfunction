#>sco:process/30
#@within sco:main

#初期化
execute if score runtime game matches 1 run function sco:process/game_reset
execute if score runtime game matches 5 run tellraw @a "開始"
#テレポート
execute if score runtime game matches 1 as @a[team=!] run function sco:tp/stage/test

#プロセス終了

execute unless entity @a[team=blue] run scoreboard players set flag game 1
execute unless entity @a[team=red] run scoreboard players set flag game 2
execute if score flag game matches 1 run function sco:process/game_flag/red
execute if score flag game matches 2 run function sco:process/game_flag/blue

#さどんです
#execute if score runtime game matches 200 run scoreboard players set process game 31
#execute if score runtime game matches 200 run scoreboard players set runtime game -1