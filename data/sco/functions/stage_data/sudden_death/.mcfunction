#>sco:stage_data/sudden_death/
#@within sco:stage_data/stage/**
#data modify storage sco:input regine_area.sudden_death set value {1:[37, -39, -133],2:[67, -57, -153]}
data modify storage sco:input block_area.input append value {name:"sudden_death",1:[37, -39, -165],2:[67, -57, -185]}
data modify storage sco:input penalty_area.input.death append value {name:"sudden_death",1:[37, -39, -165],2:[67, -57, -185]}
data modify storage sco:input penalty_area.input.penalty append value {name:"sudden_death",1:[37, -39, -165],2:[67, -57, -185]}
data modify storage sco:input respawn append value {name:"sudden_death_red",pos:"40 -56 -175"}
data modify storage sco:input respawn append value {name:"sudden_death_blue",pos:"64 -56 -175"}