#>sco:messeges/1minutes
#@api
tellraw @a[predicate=sco:team_join] [{translate: "messege.sco.1minutes",fallback: "残り時間1分です。",bold: true}]
execute as @a[predicate=sco:team_join] at @s run playsound entity.player.levelup record @s ~ ~ ~ 0.5 1
execute if data storage sco:data {stage:"blank_fortress"} run tellraw @a[predicate=sco:team_join] [{translate: "messege.sco.blank_fortress.1minutes",fallback: "燃料の回復が速くなります。"}]