#>timer:setup
#@within tag/function load

scoreboard objectives add timer dummy

#>
#@within timer:**
#declare score_holder #tick
#declare score_holder #s_time
#declare score_holder #s_time_max
#declare score_holder #s
#declare score_holder #m
#declare score_holder #mode
#>
#@public
#declare storage timer:
#declare score_holder #mst_time
#declare score_holder #set_mst_time

bossbar add timer: ""
bossbar set timer: style notched_10
bossbar set timer: color red

scoreboard players set #60 _ 60
scoreboard players set #20 _ 20