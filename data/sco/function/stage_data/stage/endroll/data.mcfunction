#>sco:stage_data/stage/endroll/data
#@within sco:stage_data/data_fetch
data modify storage sco:input stage set value "endroll"
data modify storage sco:input shop set value "endroll"
data modify storage sco:input options set value {reset:1b,gimmick:true}
data modify storage sco:input block_area.input append value {name:"stage",1:[-466, 15, -210],2:[-575, -64, -319]}
data modify storage sco:input block_area.input append value {name:"shop",1:[-466, 15, -210],2:[-575, -64, -319]}
data modify storage sco:input penalty_area.input.flags.penalty set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.flags.death set value {stage:1b,shop:1b,sudden_death:1b}
data modify storage sco:input penalty_area.input.death append value {name:"stage",1:[-463, 15, -322],2:[-578, -84, -207]}
data modify storage sco:input penalty_area.input.penalty append value {name:"stage",1:[-463, 15, -322],2:[-578, -84, -207]}
data modify storage sco:input penalty_area.input.death append value {name:"shop",1:[-463, 15, -322],2:[-578, -84, -207]}
data modify storage sco:input penalty_area.input.penalty append value {name:"shop",1:[-463, 15, -322],2:[-578, -84, -207]}
data modify storage sco:input stage_name set value {"text":"エンドロール"}
data modify storage sco:input respawn append value {name:"stage_red",pos:"-551 -30 -234 -135 0"}
data modify storage sco:input respawn append value {name:"stage_blue",pos:"-491 -30 -294 45 0"}
data modify storage sco:input respawn append value {name:"shop_red",pos:"-573 -26 -277 -70 0"}
data modify storage sco:input respawn append value {name:"shop_blue",pos:"-469 -26 -252 110 0"}
function sco:stage_data/sudden_death/
execute store result storage sco:input options.time byte 1 run random value 0..2
execute store result score # _ run random value 0..9
execute if score # _ matches 0 run data modify storage sco:input stage_description set value [{"text":"「---さん、あなた恨みます。」"}]
execute if score # _ matches 1 run data modify storage sco:input stage_description set value [{"text":"「...この...ひ...ご......し...------」"}]
execute if score # _ matches 2 run data modify storage sco:input stage_description set value [{"text":"「---後の最------大---吐きや---ってっ！」"}]
execute if score # _ matches 3 run data modify storage sco:input stage_description set value [{"text":"「......し...る...」"}]
execute if score # _ matches 4 run data modify storage sco:input stage_description set value [{"text":"「------が！お------が悪いんだ！---あひゃひゃははははハはは-------------！！！」"}]
execute if score # _ matches 5 run data modify storage sco:input stage_description set value [{"text":"「...いし...る...」"}]
execute if score # _ matches 6 run data modify storage sco:input stage_description set value [{"text":"「こ------魔め！---------------！」"}]
execute if score # _ matches 7 run data modify storage sco:input stage_description set value [{"text":"「...こ......や......ため...泣......よ...」"}]
execute if score # _ matches 8 run data modify storage sco:input stage_description set value [{"text":"「...がだ......。はや......迎.........か.........」"}]
execute if score # _ matches 9 run data modify storage sco:input stage_description set value [{"text":"「ん---た---意------ない------な------す---！」"}]


#domination
##beacon
data modify storage sco:input domination.beacon.set_pos set value []
data modify storage sco:input domination.beacon.set_pos append value {pos:[-549,-32,-265],num:0}
data modify storage sco:input domination.beacon.set_pos append value {pos:[-513,-27,-237],num:1}
data modify storage sco:input domination.beacon.set_pos append value {pos:[-521,-34,-264],num:2}
data modify storage sco:input domination.beacon.set_pos append value {pos:[-529,-27,-291],num:3}
data modify storage sco:input domination.beacon.set_pos append value {pos:[-493,-32,-263],num:4}
##value
data modify storage sco:input domination.progress_value set value [0,10,15,20,26,35]
data modify storage sco:input domination.assist_progress_value set value [0,10,1,30,50,75]
data modify storage sco:input domination.capture_value set value [20,20,10,10,8,0]
data modify storage sco:input domination.assist_capture_value set value [35,35,25,15,12,0]
data modify storage sco:input domination.fix_value set value [0,15,10,10,5,2]
##assist threshold
data modify storage sco:input domination.assist_threshold set value 800
##time
data modify storage sco:input domination.progress_time set value 84000
data modify storage sco:input domination.capture_time set value 4000
##respawn
data modify storage sco:input domination.respawn.fixed set value 200
data modify storage sco:input domination.respawn.max set value 400
data modify storage sco:input domination.respawn.assist set value -125
data modify storage sco:input domination.respawn.penalty.damage_dealt set value {div:150, add_value:20}
data modify storage sco:input domination.respawn.penalty.kill set value {div:1, add_value:25}
data modify storage sco:input domination.respawn.penalty.throwing_potion set value {div:1, add_value:10}
data modify storage sco:input domination.respawn.penalty.drinking_potion set value {div:1, add_value:6}
##teleport_point
data modify storage sco:input teleport_point.set_pos set value ["-564 -27 -280","-564 -27 -267","-478 -27 -249","-478 -27 -262"]
