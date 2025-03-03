#>sco:stage_data/stage/blank_fortress/object/power_bullet/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless score @s stage_object.count.1 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.1 0
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run function sco:stage_data/stage/blank_fortress/object/put_fuel/reset {name:"#blank_fortress.power_bullet.require_fuel"}
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
execute unless score @s stage_object.cooldown matches -2147483648..2147483647 run scoreboard players set @s stage_object.cooldown 0
scoreboard players add @s[scores={stage_object.count.0=1..}] stage_object.count.0 1
scoreboard players set @s[scores={stage_object.count.0=63..}] stage_object.count.0 0
execute if score @s[scores={stage_object.cooldown=0}] stage_object.count.1 = #blank_fortress.power_bullet.require_fuel stage_object.configs on passengers if data entity @s[type=interaction] interaction on vehicle run function sco:stage_data/stage/blank_fortress/object/power_bullet/click/launch
execute if score @s[scores={stage_object.cooldown=0}] stage_object.count.1 < #blank_fortress.power_bullet.require_fuel stage_object.configs on passengers if data entity @s[type=interaction] interaction if function sco:stage_data/stage/blank_fortress/object/put_fuel/test on vehicle run function sco:stage_data/stage/blank_fortress/object/put_fuel/ {name:"#blank_fortress.power_bullet.require_fuel"}
execute on passengers run data remove entity @s[type=interaction] interaction

execute if entity @s[scores={stage_object.count.0=1..40}] positioned ~ ~5 ~ run particle enchant ~ ~ ~ 0.3 1 0.3 0 2 force @a[distance=..80]
execute if entity @s[scores={stage_object.count.0=1..40}] positioned ~ ~5 ~ run particle portal ~ ~ ~ 2 1 2 0 2 force @a[distance=..80]
execute if entity @s[scores={stage_object.count.0=40..50}] positioned ~ ~4.5 ~ run particle portal ~ ~ ~ 0 0 0 2 60 force @a[distance=..80]
execute if entity @s[scores={stage_object.count.0=1..20}] positioned ~2 ~5 ~1 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=1..20}] positioned ~-2 ~5 ~-1 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=10..30}] positioned ~1 ~3 ~2 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=10..30}] positioned ~-1 ~3 ~-2 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=20..40}] positioned ~1 ~5 ~-2 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=20..40}] positioned ~-1 ~5 ~2 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=30..50}] positioned ~2 ~3 ~-1 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=30..50}] positioned ~-2 ~3 ~1 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line

execute if entity @s[scores={stage_object.count.0=20}] run playsound block.beacon.activate record @a[distance=..80] ~ ~ ~ 1 1 0.7
execute if entity @s[scores={stage_object.count.0=30}] run playsound block.beacon.activate record @a[distance=..80] ~ ~ ~ 1 0.5 0.7
execute if entity @s[scores={stage_object.count.0=40}] run playsound block.beacon.activate record @a[distance=..80] ~ ~ ~ 1 2 0.7
execute if entity @s[scores={stage_object.count.0=30}] run playsound block.beacon.power_select record @a[distance=..80] ~ ~ ~ 1 1 0.7
execute if entity @s[scores={stage_object.count.0=25}] run playsound entity.blaze.death record @a[distance=..80] ~ ~ ~ 1 0.6 0.7
execute if entity @s[scores={stage_object.count.0=35}] run playsound block.beacon.power_select record @a[distance=..80] ~ ~ ~ 1 1 0.7


execute if entity @s[scores={stage_object.count.0=50}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=50}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=52}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=52}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=54}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=54}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=56}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=56}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=58}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=58}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=60}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=60}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=62}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=62}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}

execute if entity @s[scores={stage_object.cooldown=1..}] run function sco:stage_data/stage/blank_fortress/object/cooldown/ {name:"#blank_fortress.power_bullet.require_fuel"}