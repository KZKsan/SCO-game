#>enderface:gui/processing/kit_memory/save/
#@within enderface:gui/processing/kit_memory/
tellraw @s {"text":">Kitデータを保存しました。","color": "yellow"}
data modify storage _ data_fetch.number set from storage p-storage _[0].data.page
function enderface:gui/processing/kit_memory/save/macro with storage _ data_fetch
playsound entity.player.levelup record @s ~ ~ ~ 0.5 2