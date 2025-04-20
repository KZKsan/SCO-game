#>sco:stage_data/stage/blank_fortress/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "blank_fortress"
data modify storage sco:input shop set value "blank_fortress"
data modify storage sco:input options set value {reset:1b,gimmick:true,generate:true}
data modify storage sco:input block_area.input append value {name:"stage",1:[-784, -62, -225],2:[-625, 14, -304]}
data modify storage sco:input block_area.input append value {name:"shop_red",1:[-793, 14, -272],2:[-785, 9, -257]}
data modify storage sco:input block_area.input append value {name:"shop_blue",1:[-616, 14, -257],2:[-624, 9, -272]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-784, -62, -225],2:[-625, -3, -304]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-784, -62, -225],2:[-625, -7, -304]}
data modify storage sco:input stage_name set value {"text":"ウツロヨウサイ"}
data modify storage sco:input stage_description set value {"text":"Edit by KZK1945"}

data modify storage sco:input penalty_area.input.penalty append value {name:"shop_red",1:[-615, 15, -256],2:[-625, 8, -273]}
data modify storage sco:input penalty_area.input.penalty append value {name:"shop_blue",1:[-794, 15, -273],2:[-784, 8, -256]}
data modify storage sco:input penalty_area.input.death append value {name:"shop_red",1:[-615, 15, -256],2:[-625, 8, -273]}
data modify storage sco:input penalty_area.input.death append value {name:"shop_blue",1:[-794, 15, -273],2:[-784, 8, -256]}
data modify storage sco:input respawn append value {name:"shop_red",pos:"-621 9 -270 -20 0"}
data modify storage sco:input respawn append value {name:"shop_blue",pos:"-788 9 -259 160 0"}

#function sco:stage_data/shop/
function sco:stage_data/sudden_death/

execute store result score # _ run random value 0..2


execute if score # _ matches 0 run data modify storage sco:input respawn append value {name:"stage_blue",pos:"-629.0 -45.5 -248.0 90 0"}
execute if score # _ matches 1 run data modify storage sco:input respawn append value {name:"stage_blue",pos:"-629.0 -45.5 -264.0 90 0"}
execute if score # _ matches 2 run data modify storage sco:input respawn append value {name:"stage_blue",pos:"-629.0 -45.5 -280.0 90 0"}
execute if score # _ matches 0 run data modify storage sco:input respawn append value {name:"stage_red",pos:"-780.0 -45.5 -280.0 -90 0"}
execute if score # _ matches 1 run data modify storage sco:input respawn append value {name:"stage_red",pos:"-780.0 -45.5 -264.0 -90 0"}
execute if score # _ matches 2 run data modify storage sco:input respawn append value {name:"stage_red",pos:"-780.0 -45.5 -248.0 -90 0"}
