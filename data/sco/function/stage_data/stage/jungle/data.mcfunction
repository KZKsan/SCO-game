#>sco:stage_data/stage/jungle/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "jungle"
data modify storage sco:input shop set value ""
data modify storage sco:input block_area.input append value {name:"stage",1:[-404, -63, -57],2:[-451, -24, -104]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-403, -23, -56],2:[-452, -64, -105]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-403, -23, -56],2:[-452, -64, -105]}
data modify storage sco:input stage_name set value {"text":"かそかそ密林"}
data modify storage sco:input stage_description set value {"text":"Edit by mikan_chan_"}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-449 -61 -102 -45 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-406 -61 -59 135 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/