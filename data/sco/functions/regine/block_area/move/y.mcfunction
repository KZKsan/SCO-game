#>sco:regine/block_area/move/y
#@within sco:regine/block_area/
summon marker ~ ~ ~ {Tags:[set_pos]}
function sco:regine/block_area/move/reset_motion/
execute store result entity @e[type=marker,tag=set_pos,limit=1] Pos[1] double 1 run scoreboard players get @s regine.y1
execute positioned as @e[type=marker,tag=set_pos,limit=1] run teleport @s ~ ~0.5 ~
kill @e[type=marker,tag=set_pos]