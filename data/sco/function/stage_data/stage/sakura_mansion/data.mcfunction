#>sco:stage_data/stage/sakura_mansion/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "sakura_mansion"
data modify storage sco:input shop set value ""
data modify storage sco:input options set value {reset:1b}
data modify storage sco:input block_area.input append value {name:"stage",1:[-246, -7, -427],2:[-385, -55, -267]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-246, -7, -427],2:[-385, -55, -267]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-246, -7, -427],2:[-385, -55, -267]}
data modify storage sco:input stage_name set value {"text":"桜邸"}
data modify storage sco:input stage_description set value {"text": ""}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-311 -49 -408 0 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-311 -49 -286 180 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/