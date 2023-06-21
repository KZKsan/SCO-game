#>sco:player/random_team
#@api
execute store result score # _ if entity @a[team=red]
execute store result score #_ _ if entity @a[team=blue]
execute if score # _ < #_ _ run team join red
execute if score # _ = #_ _ run team join red @s[predicate=5050]
team join blue @s[team=!]