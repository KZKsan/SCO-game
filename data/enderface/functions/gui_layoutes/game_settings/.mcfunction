#>enderface:gui_layoutes/game_settings/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.9 with grass_block{enderfaceItem:1b,display:{Name:'{"text": ">ステージ","italic": false}'},click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"game_settings/stage_select"}}
execute if data storage sco:config game{can_team_select:false} run item replace entity @s enderchest.11 with gray_dye{enderfaceItem:1b,display:{Name:'{"text": ">チーム選択","italic": false}',Lore:['{"text": "|OFF|","color": "gray","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{can_team_select:true} run item replace entity @s enderchest.11 with lime_dye{enderfaceItem:1b,display:{Name:'{"text": ">チーム選択","italic": false}',Lore:['{"text": "|ON|","color": "green","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{show_hp:false} run item replace entity @s enderchest.12 with gray_dye{enderfaceItem:1b,display:{Name:'{"text": ">HPの表示","italic": false}',Lore:['{"text": "|OFF|","color": "gray","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{show_hp:true} run item replace entity @s enderchest.12 with lime_dye{enderfaceItem:1b,display:{Name:'{"text": ">HPの表示","italic": false}',Lore:['{"text": "|ON|","color": "green","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{show_enemy_team_name:false} run item replace entity @s enderchest.13 with gray_dye{enderfaceItem:1b,display:{Name:'{"text": ">敵チームの名前の表示","italic": false}',Lore:['{"text": "|OFF|","color": "gray","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{show_enemy_team_name:true} run item replace entity @s enderchest.13 with lime_dye{enderfaceItem:1b,display:{Name:'{"text": ">敵チームの名前の表示","italic": false}',Lore:['{"text": "|ON|","color": "green","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{friendlyfire:false} run item replace entity @s enderchest.14 with gray_dye{enderfaceItem:1b,display:{Name:'{"text": ">フレンドリーファイア","italic": false}',Lore:['{"text": "|OFF|","color": "gray","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{friendlyfire:true} run item replace entity @s enderchest.14 with lime_dye{enderfaceItem:1b,display:{Name:'{"text": ">フレンドリーファイア","italic": false}',Lore:['{"text": "|ON|","color": "green","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{can_pickup_arrows:false} run item replace entity @s enderchest.15 with gray_dye{enderfaceItem:1b,display:{Name:'{"text": ">矢の回収","italic": false}',Lore:['{"text": "|OFF|","color": "gray","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}
execute if data storage sco:config game{can_pickup_arrows:true} run item replace entity @s enderchest.15 with lime_dye{enderfaceItem:1b,display:{Name:'{"text": ">矢の回収","italic": false}',Lore:['{"text": "|ON|","color": "green","italic": false}']},click_events:{click_sounds:[{sound:"ui.button.toggle"}]}}

execute if data storage sco:config game{rule:"death_match"} run item replace entity @s enderchest.0 with iron_sword{enderfaceItem:1b,display:{Name:'{"text": ">ゲームルール","italic": false}',Lore:['{"text": "デスマッチ","color": "red","italic": false}']},HideFlags:32,click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"game_settings/rule_settings"}}
execute if data storage sco:config game{rule:"kick_out"} run item replace entity @s enderchest.0 with golden_axe{enderfaceItem:1b,display:{Name:'{"text": ">ゲームルール","italic": false}',Lore:['{"text": "キックアウト","color": "yellow","italic": false}']},HideFlags:32,click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"game_settings/rule_settings"}}
item replace entity @s enderchest.7 with book{enderfaceItem:1b,display:{Name:'{"text": ">ルールアナウンス","italic": false}',Lore:['{"text": "ワールド内のプレイヤーに設定中のルールを知らせます。","color": "aqua","italic": false}']}}
item replace entity @s enderchest.8 with goat_horn{enderfaceItem:1b,display:{Name:'{"text": ">開始アナウンス","italic": false}',Lore:['{"text": "ワールド内のプレイヤーに開始を知らせます。","color": "aqua","italic": false}']},HideFlags:32}


item replace entity @s enderchest.17 with gold_block{enderfaceItem:1b,display:{Name:'{"text": ">ゲーム開始","italic": false}'},click_events:{click_sounds:[{sound:"ui.button.click"}]}}


data modify storage p-storage _[0].data.page set value 0