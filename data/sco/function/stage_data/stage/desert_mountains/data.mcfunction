#>sco:stage_data/stage/desert_mountains/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "desert_mountains"
data modify storage sco:input shop set value ""
data modify storage sco:input options set value {reset:1b}
data modify storage sco:input block_area.input append value {name:"stage",1:[-544, -23, -164],2:[-614, -64, -78]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-544, -23, -164],2:[-614, -64, -78]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-544, -23, -164],2:[-614, -64, -78]}
data modify storage sco:input stage_name set value {"text":"デザートサンミャク"}
data modify storage sco:input stage_description set value {"text": "Edit by zenkai1009"}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-555.75 -57.94 -149.25 45 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-600.25 -57.94 -88.75 -135 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/