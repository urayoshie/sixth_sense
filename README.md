# name of game
Sixth Sense

# description
プレイヤーが主人公を選択し、
ゲームの主人公として、長い旅に出ます。

進む道は2つ、AまたはB。
直感でAまたはBの道を選び先に進みます。
進んだ先では、敵に出会ってダメージを受けるか、
アイテムを見つけてHPを上げてゴールを目指します。
主人公のHPが0または1000以上になるとゲームは終わります。

# file structure
このアプリは以下のファイルで構成されています。
* main.rb → 実行プログラム
* character.rb → 主人公のデータ。
* player.rb → プレイヤーの行動の処理。主人公の選択、A道B道の選択。
* way.rb → A道とB道のデータ。
* waylist.rb → A道またはB道を選ばれた後の処理。プレイヤー(主人公)の残りのHPの表示。

# how to play
```
(1) cd sixth_sense
(2) ruby main.rb で起動。
(3) 主人公を選択し、旅をスタートする。
(4) 直感のみでAまたはBの道を選択。
(5) 主人公のHPが1000以上になればゲームクリア。
(6) 主人公のHPが0になるとゲームオーバー。
```

## ruby --version
 
Ruby 2.7.2




