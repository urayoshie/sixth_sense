require "pry"

require "./character.rb"
require "./player.rb"
require "./way.rb"
require "./waylist.rb"

character_params = [
  {name: "マリオ", hp: 500},
  {name: "ルイージ", hp: 450},
  {name: "ピーチ", hp: 400}
]

# A道の内容
way_params1 = [
  { hp: -10, msg: "クリボーに出会った。\r\n可愛かったのでつい触ってしまった。\r\nダメージ10を受けた！"},
  { hp: -15, msg: "ノコノコがこちらに向かって歩いてきたので\r\n仲間にしようと思ったが断られ\r\nダメージ15を受けた！"},
  { hp: -25, msg: "テレサがフワフワと近づいてきた。\r\n避けたつもりだったが、ダメージ25を受けた！"},
  { hp: -50, msg: "キラーがすごい勢いでこちらに向かってきてた。\r\n避けきれず、ダメージ50を受けた！"},
  { hp: -100, msg: "強敵の敵、クッパに出会ってしまった。\r\nこれはもう逃げられない！\r\n当たって砕けろで体当たり！\r\nダメージ100を受けた！"},
  { hp: -30, msg: "気を抜いて歩いていたら\r\nパックンフラワーに噛まれてしまった。\r\nダメージ30を受けた！"},
  { hp: -70, msg: "突然ドッスンが目の前に現れた！\r\n踏まれずには済んだけど\r\nダメージ70を受けた！"},
  { hp: 30, msg: "ファイアーフラワーを見つけた。\r\nHP30をゲットした！\r\nファイヤーを投げながら突っ走ろう！"},
  { hp: 50, msg: "スーパーキノコを見つけた！\r\nお腹空いていたのでムシャムシャ食べて、\r\nHP50をゲットした！"},
  { hp: 70, msg: "スーパースターを見つけた！HP70をゲットした！\r\nスーパースターで最強になれる時間は短い。\r\n先を急ごう!！"}
]

# B道の内容
way_params2 = [
  { hp: -10, msg: "メットがチョコチョコと歩いて来て\r\n何食わぬ顔で当たってきた。\r\nダメージ10を受けた！"},
  { hp: -15, msg: "プクプクがぷくぷくと飛んできた。\r\n可愛かったのでついつい触ってしまい、\r\nダメージ15を受けた！"},
  { hp: -25, msg: "ジュゲムが上からパイポを投げてきた。\r\n避けれず当たってしまい、\r\nダメージ25を受けた！"},
  { hp: -40, msg: "ハンマーブロスがハンマーをガンガン投げてきた。\r\n大体は避けれたが\r\nダメージ40を受けた！"},
  { hp: -60, msg: "にせクッパが現れた。\r\n倒せると思い戦ってみたが強すぎて\r\nダメージ60を受けた！"},
  { hp: 20, msg: "コインを手に入れた。HP20をゲットした！"},
  { hp: 30, msg: "ファイアーフラワーを見つけた。\r\nHP30をゲットした！\r\nファイヤーを投げながら突っ走ろう！"},
  { hp: 70, msg: "スーパースターを見つけた！HP70をゲットした！\r\nスーパースターで最強になれる時間は短い。\r\n先を急ごう!！"},
  { hp: 100, msg: "ヨッシーと出会った。\r\n少しのあいだ仲間になる約束をした。\r\nHP100をゲットした！"},
  { hp: 150, msg: "1UPキノコを見つけた。HP150をゲットした！\r\n力がみるみるとみなぎってきた！！"}
]

player = Player.new(character_params)

player.show_characters
player.choose_character(character_params)
player.first_action

waylist1 = WayList.new(way_params1)
waylist2 = WayList.new(way_params2)

while $chosen_character.hp > 0 && $chosen_character.hp <= 1000
  # binding.pry
  player.choose_way(way_params1.sample, way_params2.sample) if $chosen_character.hp > 0
  waylist1.left_hp(character_params)
  # player.choose_way(way_params1.sample, way_params2.sample) if $chosen_character.hp > 0
  # waylist2.left_hp(character_params)
  break if $chosen_character.hp >= 1000 || $chosen_character.hp <= 0
end

  if $chosen_character.hp >= 1000
    puts <<~TEXT
          #{$chosen_character.name}は城に着いた!

          あなたは驚異的なSIXTH SENSEの持ち主です。
          自分の直感を信じてこの先も突き進みましょう！

          TEXT
  elsif $chosen_character.hp == 0
    puts <<~TEXT
          #{$chosen_character.name}は迷子になった。
          SIXTH SENSEを鍛えて出直しましょう！

          TEXT
  end
