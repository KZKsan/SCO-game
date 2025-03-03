#>sco:stage_data/stage/blank_fortress/object/boost/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless score @s stage_object.count.1 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.1 0
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run function sco:stage_data/stage/blank_fortress/object/put_fuel/reset {name:"#blank_fortress.boost.require_fuel"}
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
execute unless score @s stage_object.cooldown matches -2147483648..2147483647 run scoreboard players set @s stage_object.cooldown 0
scoreboard players remove @s[scores={stage_object.count.0=1..}] stage_object.count.0 1
execute if score @s[scores={stage_object.cooldown=0}] stage_object.count.1 = #blank_fortress.boost.require_fuel stage_object.configs on passengers if data entity @s[type=interaction] interaction on vehicle run function sco:stage_data/stage/blank_fortress/object/boost/click/launch
execute if score @s[scores={stage_object.cooldown=0}] stage_object.count.1 < #blank_fortress.boost.require_fuel stage_object.configs on passengers if data entity @s[type=interaction] interaction if function sco:stage_data/stage/blank_fortress/object/put_fuel/test on vehicle run function sco:stage_data/stage/blank_fortress/object/put_fuel/ {name:"#blank_fortress.boost.require_fuel"}
execute on passengers run data remove entity @s[type=interaction] interaction

execute if entity @s[scores={stage_object.count.0=21}] run playsound block.beacon.activate record @a[distance=..80] ~ ~ ~ 0.8 1 0.5
execute if entity @s[scores={stage_object.count.0=1}] run playsound block.beacon.power_select record @a[distance=..80] ~ ~ ~ 0.8 1.2 0.5


execute if entity @s[scores={stage_object.count.0=11..21}] run particle end_rod ~ ~6 ~ 0.01 6 0.01 0.05 10 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=11..21}] run particle electric_spark ~ ~8 ~ 1 2 1 0.05 60 force @a[distance=..60]


execute if entity @s[scores={stage_object.count.0=01}] run particle enchant ~ ~8 ~ 0 6 0 1 100 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=01}] run particle electric_spark ~ ~8 ~ 0.1 6 0.1 3 360 force @a[distance=..60]




execute if entity @s[scores={stage_object.count.0=01}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s run function sco:stage_data/stage/blank_fortress/object/boost/effect


execute if entity @s[scores={stage_object.count.0=01}] on passengers if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s run function sco:stage_data/stage/blank_fortress/object/boost/effect




execute if entity @s[scores={stage_object.cooldown=1..}] run function sco:stage_data/stage/blank_fortress/object/cooldown/ {name:"#blank_fortress.boost.require_fuel"}