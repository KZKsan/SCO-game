#>sco:stage_data/stage/blank_fortress/object/thunder/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless score @s stage_object.count.1 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.1 0
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run function sco:stage_data/stage/blank_fortress/object/put_fuel/reset {name:"#blank_fortress.thunder.require_fuel"}
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
execute unless score @s stage_object.cooldown matches -2147483648..2147483647 run scoreboard players set @s stage_object.cooldown 0
scoreboard players remove @s[scores={stage_object.count.0=1..}] stage_object.count.0 1
execute if score @s[scores={stage_object.cooldown=0}] stage_object.count.1 = #blank_fortress.thunder.require_fuel stage_object.configs on passengers if data entity @s[type=interaction] interaction on vehicle run function sco:stage_data/stage/blank_fortress/object/thunder/click/launch
execute if score @s[scores={stage_object.cooldown=0}] stage_object.count.1 < #blank_fortress.thunder.require_fuel stage_object.configs on passengers if data entity @s[type=interaction] interaction if function sco:stage_data/stage/blank_fortress/object/put_fuel/test on vehicle run function sco:stage_data/stage/blank_fortress/object/put_fuel/ {name:"#blank_fortress.thunder.require_fuel"}
execute on passengers run data remove entity @s[type=interaction] interaction

execute if entity @s[scores={stage_object.count.0=21}] run particle flash ~ ~4 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=16}] run particle flash ~ ~5 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=11}] run particle flash ~ ~6 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=06}] run particle flash ~ ~7 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=21}] run playsound block.bell.use record @a[distance=..80] ~ ~ ~ 0.8 1 0.5
execute if entity @s[scores={stage_object.count.0=11}] run playsound block.bell.use record @a[distance=..80] ~ ~ ~ 0.8 1 0.5
execute if entity @s[scores={stage_object.count.0=1}] run playsound item.trident.thunder record @a[distance=..80] ~ ~ ~ 0.8 1 0.5


execute if entity @s[scores={stage_object.count.0=11..21}] run particle firework ~ ~6 ~ 1 2 1 0.05 10 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=11..21}] run particle electric_spark ~ ~8 ~ 1 2 1 0.05 60 force @a[distance=..60]


execute if entity @s[scores={stage_object.count.0=01}] run particle firework ~ ~8 ~ 0.1 6 0.1 0.2 100 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=01}] run particle electric_spark ~ ~8 ~ 0.1 6 0.1 3 360 force @a[distance=..60]




execute if entity @s[scores={stage_object.count.0=01}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s run function sco:stage_data/stage/blank_fortress/object/thunder/effect


execute if entity @s[scores={stage_object.count.0=01}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s run function sco:stage_data/stage/blank_fortress/object/thunder/effect




execute if entity @s[scores={stage_object.cooldown=1..}] run function sco:stage_data/stage/blank_fortress/object/cooldown/ {name:"#blank_fortress.thunder.require_fuel"}