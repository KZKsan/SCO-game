#>sco:regine/thrown_tridents/test
#@api
execute on origin if entity @s[predicate=sco:team_join,team=!spectator] run return 1
return fail