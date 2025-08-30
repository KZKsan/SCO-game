#>sco:process/domination/object/beacon/info/blue
#@within sco:process/domination/object/beacon/
tag @s add origin
scoreboard players set #100 _ 100
scoreboard players operation # _ = #domination.capture_time game
scoreboard players operation # _ -= @s stage_object.count.1
scoreboard players operation # _ *= #100 _
scoreboard players operation # _ /= #domination.capture_time game
execute on passengers if entity @s[type=text_display,tag=beacon.info] run data modify entity @s text set value {"text":""}
execute on passengers if entity @s[type=text_display,tag=beacon.info] run data modify entity @s text set value [{"score":{"name": "#", "objective": "_"},"color":"blue"},{"text": "%","color":"blue"}]
tag @s remove origin