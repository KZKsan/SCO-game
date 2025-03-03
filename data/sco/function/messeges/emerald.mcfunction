#>sco:messeges/emerald
#@api
execute as @a[predicate=sco:team_join] if items entity @s container.* emerald run tellraw @s [{"text": "[","bold": true},{"translate":"item.minecraft.emerald","bold": true},{"text": "]","bold": true},{"text": "がまだ手持ちに残っています！", "color": "red","bold": true}]