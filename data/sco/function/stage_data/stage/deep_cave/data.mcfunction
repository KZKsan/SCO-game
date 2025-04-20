#>sco:stage_data/stage/deep_cave/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "deep_cave"
data modify storage sco:input shop set value ""
data modify storage sco:input options set value {reset:1b}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:0b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:0b,shop:1b,sudden_death:1b}
data modify storage sco:input block_area.input append value {name:"stage",1:[-460, -2, -677],2:[-357, -57, -578]}
data modify storage sco:input stage_name set value {"text":"地下空洞"}
data modify storage sco:input stage_description set value {"text":""}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-398 -30 -599 135 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-432 -40 -666 -45 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/