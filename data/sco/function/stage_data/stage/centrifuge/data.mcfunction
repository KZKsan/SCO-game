#>sco:stage_data/stage/centrifuge/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "centrifuge"
data modify storage sco:input shop set value ""
data modify storage sco:input options set value {reset:1b}
data modify storage sco:input block_area.input append value {name:"stage",1:[-451, -56, -182],2:[-408, -23 ,-130]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:0b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:0b,shop:1b,sudden_death:1b}
data modify storage sco:input stage_name set value {"text":"精製所"}
data modify storage sco:input stage_description set value {"text":""}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-440 -47 -175 -40 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-427 -50 -134 160 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/