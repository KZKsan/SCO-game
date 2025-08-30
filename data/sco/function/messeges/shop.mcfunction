#>sco:messeges/shop
#@api
tellraw @a[predicate=sco:team_join] {text: "装備準備時間です。\nアイテムを交換して装備を整えましょう。",color: "aqua",bold: true}
tellraw @a[team=blue] [{text: "あなたは",bold: true,color: "white"},{text: " 青blue ",bold: true,color: "blue"},{text: "チームになりました。",bold: true,color: "white"}]
tellraw @a[team=red] [{text: "あなたは",bold: true,color: "white"},{text: " 赤red ",bold: true,color: "red"},{text: "チームになりました。",bold: true,color: "white"}]

execute store result score # _ if entity @a[team=red]
execute store result score #_ _ if entity @a[team=blue]

tellraw @a[predicate=sco:team_join] [{text: "=== Team Menber Information ===",color: "light_purple",bold: true}]
tellraw @a[predicate=sco:team_join] [{text: "*",color: "red",bold: true},{text: "赤red",color: "red",bold: true},{text: " - ",color: "red",bold: true},{score:{name: "#",objective: "_"}}]
tellraw @a[predicate=sco:team_join] {selector:"@a[team=red]"}
tellraw @a[predicate=sco:team_join] [{text: "*",color: "red",bold: true},{text: "青blue",color: "blue",bold: true},{text: " - ",color: "red",bold: true},{score:{name: "#_",objective: "_"}}]
tellraw @a[predicate=sco:team_join] {selector:"@a[team=blue]"}
execute as @a[predicate=sco:team_join] at @s run playsound ui.toast.in record @s ~ ~ ~ 1 1