#>sco:stage_data/stage/blank_fortress/generate/build/walls/
#@within sco:stage_data/stage/blank_fortress/generate/build/

data remove storage _ data_fetch
data modify storage _ data_fetch.stage_type set value "bricks"
execute as @e[type=marker,tag=sco_builder] at @s run function sco:stage_data/stage/blank_fortress/generate/build/walls/read_block
execute unless data storage _ data_fetch{name:"air"} run function sco:stage_data/stage/blank_fortress/generate/build/walls/macro with storage _ data_fetch
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~ ~ ~1