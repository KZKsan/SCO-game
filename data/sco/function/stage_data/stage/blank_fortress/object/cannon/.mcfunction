#>sco:stage_data/stage/blank_fortress/object/cannon/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless score @s stage_object.count.1 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.1 0
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run function sco:stage_data/stage/blank_fortress/object/put_fuel/reset {name:"#blank_fortress.cannon.require_fuel"}
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
execute unless score @s stage_object.cooldown matches -2147483648..2147483647 run scoreboard players set @s stage_object.cooldown 0
scoreboard players remove @s[scores={stage_object.count.0=1..}] stage_object.count.0 1
execute if score @s[scores={stage_object.cooldown=0}] stage_object.count.1 = #blank_fortress.cannon.require_fuel stage_object.configs on passengers if data entity @s[type=interaction] interaction on vehicle run function sco:stage_data/stage/blank_fortress/object/cannon/click/launch
execute if score @s[scores={stage_object.cooldown=0}] stage_object.count.1 < #blank_fortress.cannon.require_fuel stage_object.configs on passengers if data entity @s[type=interaction] interaction if function sco:stage_data/stage/blank_fortress/object/put_fuel/test on vehicle run function sco:stage_data/stage/blank_fortress/object/put_fuel/ {name:"#blank_fortress.cannon.require_fuel"}
execute on passengers run data remove entity @s[type=interaction] interaction

execute if entity @s[scores={stage_object.count.0=56}] run particle flash ~ ~4 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=56}] run playsound block.piston.contract record @a ~ ~ ~ 1 1

execute if entity @s[scores={stage_object.count.0=56}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 diamond_block replace redstone_block
execute if entity @s[scores={stage_object.count.0=51}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 redstone_block replace diamond_block

execute if entity @s[scores={stage_object.count.0=51}] run particle large_smoke ~1.1 ~1.6 ~ 0 0 0 0.2 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=51}] run particle large_smoke ~-1.1 ~1.6 ~ 0 0 0 0.2 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=51}] run particle large_smoke ~ ~1.6 ~1.1 0 0 0 0.2 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=51}] run particle large_smoke ~ ~1.6 ~-1.1 0 0 0 0.2 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=50}] run playsound block.piston.extend record @a ~ ~ ~ 1 0.5
execute if entity @s[scores={stage_object.count.0=50}] run playsound block.lava.extinguish record @a ~ ~ ~ 1 1.2

execute if entity @s[scores={stage_object.count.0=50}] run particle lava ~1.1 ~1 ~ 0 0 0 1 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=50}] run particle lava ~-1.1 ~1 ~ 0 0 0 1 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=50}] run particle lava ~ ~1 ~1.1 0 0 0 1 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=50}] run particle lava ~ ~1 ~-1.1 0 0 0 1 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=48}] run particle explosion ~ ~6 ~ 0.3 0.3 0.3 0 5 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=48}] run particle cloud ~ ~8 ~ 0.3 2 0.3 0 60 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=48}] run particle firework ~ ~8 ~ 0.3 2 0.3 0.05 60 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=48}] run particle cloud ~ ~5 ~ 0.8 0.3 0.8 0.01 60 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=48}] run playsound entity.generic.explode record @a ~ ~ ~ 1 1.5
execute if entity @s[scores={stage_object.count.0=47}] run playsound entity.wither.shoot record @a ~ ~ ~ 1 0.8
execute if entity @s[scores={stage_object.count.0=50}] positioned ~ ~7 ~ as @a[predicate=gamemode/as,distance=..2] run damage @s 200 sco:explosion




execute if entity @s[scores={stage_object.count.0=46}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=41}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=36}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=31}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=26}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=21}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=16}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=11}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=6}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=1}] on passengers if data entity @s[type=marker] data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 

execute if entity @s[scores={stage_object.count.0=46}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=41}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=36}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=31}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=26}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=21}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=16}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=11}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=6}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=1}] if data entity @s[type=marker] data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 




execute if entity @s[scores={stage_object.cooldown=1..}] run function sco:stage_data/stage/blank_fortress/object/cooldown/ {name:"#blank_fortress.cannon.require_fuel"}
