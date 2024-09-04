# SCO-game

スマッシュコアオンラインのデータパック

__sco_items__

> function
> :ここにアイテムのコマンドを作る

> loot_table
> :アイテム本体はここで作る

> advancement
> :複雑なトリガーとかに使う

***ショップを出すコマンド***

> /function enderface:set_ender_chest/shop/0

***取引設定方法***

1.data\enderface\functions\gui_layoutes\shop\set_trade_data\category\のカテゴリ設定用functionを開く

2.以下のコマンドを書く

```mcfunction {"id":"01J6KA78SG4YEAQXJHRBVPQWGV"}
### 購入アイテム チェスト付きトロッコのcontainer.0に入れる GUI上は購入アイテムがそのままアイコンになる
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe 1
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with iron_sword 1
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.2 with diamond 5
data modify storage enderface:shop sell_count set value {click:<回数>,sneak:<回数>}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/all
data modify storage enderface:shop trade_data append from storage enderface:shop _

## 個別に設定する方法
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
#(アイテムを変える場合使う)item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_sword 1
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with diamond 5
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _

## 取引ボタンの見た目を設定する方法
#ダイヤモンドピッケルを売る取引を作る場合 (アイコンはダイヤピッケル|取引ボタンはエメラルド)
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 20
#↓省略すると取引ボタンは　enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview で指定したアイテムになる
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _

```

3.取引多重化

```mcfunction {"id":"01J6KA78SG4YEAQXJHRC8PDD63"}
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 20
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
#↓以降追加取引
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/add_trade
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with gold_block
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with gold_ingot 10
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
#↑ここまで追加取引
data modify storage enderface:shop trade_data append from storage enderface:shop _

```

カテゴリを追加する場合

1.data\enderface\functions\gui_layoutes\shop\set_trade_data\category\のカテゴリ設定用functionを作る

2.以下のコマンドを書く

```mcfunction {"id":"01J6KA78SG4YEAQXJHRG3F6M74"}
#>enderface:gui_layoutes/shop/set_trade_data/category/<カテゴリ名(このfunctionの名前)>
#@within tag/function enderface:set_trade_data
function enderface:gui_layoutes/shop/set_trade_data/reset_data

## ここに取引の内容を書いていく
## ...

## 取引内容を保存
data modify storage enderface:shop <カテゴリ名> set from enderface:shop trade_data


```

3.作ったカテゴリ設定用functionのパスをdata\enderface\tags\functions\set_trade_data.jsonに追加する

4.data\enderface\functions\gui_layoutes\shop\<カテゴリ名>.mcfunctionを作成し、以下のコマンドを書く

```mcfunction {"id":"01J6KA78SG4YEAQXJHRGAZVQYK"}
#>enderface:gui_layoutes/shop/<カテゴリ名>
#@within enderface:gui_layoutes/load

data modify storage enderface:shop _ set from storage enderface:shop <カテゴリ名>

function enderface:gui_layoutes/shop/generic


```

5.data\enderface\functions\gui_layoutes\load.mcfunctionに以下のコマンドを書く

```mcfunction {"id":"01J6KA78SG4YEAQXJHRJMH10B2"}
#>enderface:gui_layoutes/load
#@within enderface:**

##ここより上の文はいじらない

# 追加して書く
execute if data storage enderface:data {gui_name:"shop/<カテゴリ名>"} run function enderface:gui_layoutes/shop/<カテゴリ名>

##ここより下の文はいじらない
function enderface:gui_data/copy


```

6.data\enderface\functions\gui_layoutes\shop\0.mcfunctionに以下のコマンドを書く

```mcfunction {"id":"01J6KA78SG4YEAQXJHRNJMA60G"}
#>enderface:gui_layoutes/shop/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

##ここより上の文はいじらない

##ここでGUIのボタンを作る
item replace entity @s enderchest.<スロット> with iron_sword{click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"shop/<カテゴリ名>"},enderfaceItem:1b}

##ここより下の文はいじらない
function marker_storage/get
data remove entity @e[predicate=marker_stor.age,limit=1] data.preview_trade
data modify entity @e[predicate=marker_storage,limit=1] data.page set value 0


```

7.データパックを再読み込みする

> 翻訳キー
> :アイテム名および説明文をリソースパックにより翻訳できるように定義

・アイテム名：
`item.sco_items.(name)`

・説明文：
`item.sco_items.(name).description.(number)`

・手に持ったとき：`item.modifiers.hand`
