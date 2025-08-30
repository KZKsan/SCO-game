#>sco:stage_data/stage/water_temple/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "water_temple"
data modify storage sco:input shop set value ""
data modify storage sco:input block_area.input append value {name:"stage",1:[-474, -9, -396],2:[-507, 5, -358]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-473, -11, -397],2:[-509, 13, -355]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-473, -11, -397],2:[-509, 13, -355]}
data modify storage sco:input stage_name set value {"text":"水の神殿"}
data modify storage sco:input stage_description set value {"text":"神殿の中の水を浴びるといいことがあるかもしれないらしい...?"}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-477 -9 -393 60 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-504 -9 -361 -120 0"}
function sco:stage_data/shop/
function sco:stage_data/sudden_death/