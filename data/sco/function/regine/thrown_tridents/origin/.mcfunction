tag @s add player.origin
execute as @e[type=trident] on origin if function sco:regine/thrown_tridents/origin/test run kill
tag @s remove player.origin