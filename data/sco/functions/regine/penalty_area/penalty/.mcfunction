#>sco:regine/penalty_area/penalty/
#@public
tag @s[predicate=gamemode/cs] remove rg.penalty_area.penalty.flag
$execute $(penalty)run function sco:regine/penalty_area/penalty/out
tag @s[tag=!rg.penalty_area.penalty.out] remove rg.penalty_area.penalty.flag
tag @s[tag=rg.penalty_area.penalty.out] remove rg.penalty_area.penalty.out