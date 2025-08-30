#>sco:stage_data/stage/blank_fortress/object/pickup_coal/cooldown
#@within sco:stage_data/stage/blank_fortress/object/pickup_coal/
scoreboard players remove @s stage_object.cooldown 1
scoreboard players set #20 _ 20
scoreboard players operation # _ = @s stage_object.cooldown
scoreboard players operation # _ /= #20 _
scoreboard players add # _ 1
execute on passengers as @s[type=text_display] run data modify entity @s text set value ["> ",{"score":{"name":"#","objective":"_"}},"s <"]
execute if score @s stage_object.cooldown matches 0 on passengers as @s[type=text_display] run data modify entity @s text set value {"text":">Click for Pickup<"}
