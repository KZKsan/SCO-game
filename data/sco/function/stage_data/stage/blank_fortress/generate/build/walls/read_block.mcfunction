#>sco:stage_data/stage/blank_fortress/generate/build/walls/read_block
#@within sco:stage_data/stage/blank_fortress/generate/build/walls/

execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=low] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/end", num:0, pos:"~ ~ ~ none none"}
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=low,south=none] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/end", num:0, pos:"~15 ~ ~15 180 none"}
execute if block ~ ~ ~ stone_brick_wall[east=low,west=none,north=none,south=none] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/end", num:0, pos:"~ ~ ~15 counterclockwise_90 none"}
execute if block ~ ~ ~ stone_brick_wall[east=none,west=low,north=none,south=none] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/end", num:0, pos:"~15 ~ ~ clockwise_90 none"}

execute if block ~ ~ ~ stone_brick_wall[east=low,west=none,north=none,south=low] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/curve", num:0, pos:"~ ~ ~ none none"}
execute if block ~ ~ ~ stone_brick_wall[east=low,west=none,north=low,south=none] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/curve", num:0, pos:"~ ~ ~15 counterclockwise_90 none"}
execute if block ~ ~ ~ stone_brick_wall[east=none,west=low,north=none,south=low] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/curve", num:0, pos:"~15 ~ ~ clockwise_90 none"}
execute if block ~ ~ ~ stone_brick_wall[east=none,west=low,north=low,south=none] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/curve", num:0, pos:"~15 ~ ~15 180 none"}

execute if block ~ ~ ~ stone_brick_wall[east=low,west=low,north=none,south=low] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/t-straight", num:0, pos:"~ ~ ~ none none"}
execute if block ~ ~ ~ stone_brick_wall[east=none,west=low,north=low,south=low] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/t-straight", num:0, pos:"~15 ~ ~ clockwise_90 none"}
execute if block ~ ~ ~ stone_brick_wall[east=low,west=low,north=low,south=none] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/t-straight", num:0, pos:"~15 ~ ~15 180 none"}
execute if block ~ ~ ~ stone_brick_wall[east=low,west=none,north=low,south=low] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/t-straight", num:0, pos:"~ ~ ~15 counterclockwise_90 none"}

execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=low,south=low] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/straight", num:0, pos:"~ ~ ~ none none"}
execute if block ~ ~ ~ stone_brick_wall[east=low,west=low,north=none,south=none] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/straight", num:0, pos:"~15 ~ ~ clockwise_90 none"}

execute if block ~ ~ ~ stone_brick_wall[east=low,west=low,north=low,south=low] run data modify storage sco:data stage_generate.data_fetch merge value {name:"walls/cross", num:0, pos:"~ ~ ~ none none"}

execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] run data modify storage sco:data stage_generate.data_fetch.name set value "walls/tower"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] if score #allow_tower0 _ matches 1 store result storage sco:data stage_generate.data_fetch.num int 1 run random value 0..2 sco:builder_seed
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] if score #allow_tower0 _ matches 0 store result storage sco:data stage_generate.data_fetch.num int 1 run random value 1..2 sco:builder_seed
execute if score #allow_tower0 _ matches 1 if data storage sco:data stage_generate.data_fetch{num:0} run scoreboard players set #allow_tower0 _ 0
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] store result score $random _ run random value 0..3 sco:builder_seed
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] if score $random _ matches 0 run data modify storage sco:data stage_generate.data_fetch.pos set value "~ ~ ~ none none"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] if score $random _ matches 1 run data modify storage sco:data stage_generate.data_fetch.pos set value "~15 ~ ~ clockwise_90 none"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] if score $random _ matches 2 run data modify storage sco:data stage_generate.data_fetch.pos set value "~15 ~ ~15 180 none"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] if score $random _ matches 3 run data modify storage sco:data stage_generate.data_fetch.pos set value "~ ~ ~15 counterclockwise_90 none"

execute if block ~ ~-1 ~ emerald_block run data modify storage sco:data stage_generate.data_fetch.name set value "air"
execute if block ~ ~-1 ~ #sco:stage_data/blank_fortress/generate_buildings/all store result score $random _ run random value 0..3 sco:builder_seed
execute if block ~ ~-1 ~ redstone_block run data modify storage sco:data stage_generate.data_fetch merge value {name:"buildings/cannon", num:0}
execute if block ~ ~-1 ~ netherite_block run data modify storage sco:data stage_generate.data_fetch merge value {name:"buildings/storage", num:0}
execute if block ~ ~-1 ~ gold_block run data modify storage sco:data stage_generate.data_fetch merge value {name:"buildings/thunder", num:0}
execute if block ~ ~-1 ~ purple_wool run data modify storage sco:data stage_generate.data_fetch merge value {name:"buildings/power_bullet", num:0}
execute if block ~ ~-1 ~ iron_block run data modify storage sco:data stage_generate.data_fetch merge value {name:"buildings/shield", num:0}
execute if block ~ ~-1 ~ red_stained_glass run data modify storage sco:data stage_generate.data_fetch merge value {name:"buildings/boost", num:0}
execute if block ~ ~-1 ~ #sco:stage_data/blank_fortress/generate_buildings/all if score $random _ matches 0 run data modify storage sco:data stage_generate.data_fetch.pos set value "~ ~ ~ none none"
execute if block ~ ~-1 ~ #sco:stage_data/blank_fortress/generate_buildings/all if score $random _ matches 1 run data modify storage sco:data stage_generate.data_fetch.pos set value "~15 ~ ~ clockwise_90 none"
execute if block ~ ~-1 ~ #sco:stage_data/blank_fortress/generate_buildings/all if score $random _ matches 2 run data modify storage sco:data stage_generate.data_fetch.pos set value "~15 ~ ~15 180 none"
execute if block ~ ~-1 ~ #sco:stage_data/blank_fortress/generate_buildings/all if score $random _ matches 3 run data modify storage sco:data stage_generate.data_fetch.pos set value "~ ~ ~15 counterclockwise_90 none"

data modify storage sco:data stage_generate.generate_memory prepend from storage sco:data stage_generate.data_fetch
execute if data storage sco:data stage_generate.data_fetch{pos:"~ ~ ~ none none"} run data modify storage sco:data stage_generate.generate_memory[0] merge value {pos:"~15 ~ ~15 180 none"}
execute if data storage sco:data stage_generate.data_fetch{pos:"~15 ~ ~ clockwise_90 none"} run data modify storage sco:data stage_generate.generate_memory[0] merge value {pos:"~ ~ ~15 counterclockwise_90 none"}
execute if data storage sco:data stage_generate.data_fetch{pos:"~15 ~ ~15 180 none"} run data modify storage sco:data stage_generate.generate_memory[0] merge value {pos:"~ ~ ~ none none"}
execute if data storage sco:data stage_generate.data_fetch{pos:"~ ~ ~15 counterclockwise_90 none"} run data modify storage sco:data stage_generate.generate_memory[0] merge value {pos:"~15 ~ ~ clockwise_90 none"}