#>sco:stage_data/stage/shekenadam/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "shekenadam"
data modify storage sco:input shop set value ""
data modify storage sco:input options set value {reset:1b}
data modify storage sco:input block_area.input append value {name:"stage",1:[-271, -7, -131],2:[-346, -49, -235]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-346, -7, -235],2:[-271, -49, -131]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-346, -7, -235],2:[-271, -49, -131]}
data modify storage sco:input stage_name set value {"text":"シェケナダム"}
data modify storage sco:input stage_description set value {"text": ""}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-319 -41 -226 0 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-330 -41 -141 -150 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/
