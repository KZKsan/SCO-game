#>sco:process/40
#@within sco:main
execute if score runtime game matches 5 run tellraw @a "終了中"
function timer:stop

#ゲーム終了
execute if score runtime game matches 200 run function sco:process/end