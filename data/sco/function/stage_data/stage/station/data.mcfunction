#>sco:stage_data/stage/station/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "station"
data modify storage sco:input shop set value ""
data modify storage sco:input block_area.input append value {name:"stage",1:[-367, -30, -450],2:[-259, -47, -518]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:0b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:0b,shop:1b,sudden_death:1b}
data modify storage sco:input stage_name set value {"text":"都心な駅"}
data modify storage sco:input stage_description set value {"text": ""}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-363 -45 -512 -45 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-263 -45 -456 135 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/