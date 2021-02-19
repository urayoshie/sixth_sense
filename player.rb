class Player
  attr_reader :chosen_character
  def initialize(character_params)
    @characters = []
    character_params.each do |param|
      @characters << Character.new(param)
    end
  end

  def show_characters
    puts <<~TEXT
    --------------------------------------------
          SIXTH SENSEの世界へようこそ!!
          あなたはこれから長〜い旅に出ます。
          どのキャラクターで旅に出ますか？

          キャラクターを選んでください。
    --------------------------------------------

          TEXT
    @characters.each do |character|
      puts "#{character.id}.#{character.name}"
    end
  end

  def choose_character(character_params)
    while true
      puts ""
      print "キャラクターの選択(数字) >"
      select_character_num = gets.to_i
      $chosen_character = @characters.find{|character| character.id == select_character_num}
      break if !$chosen_character.nil?
      puts <<~TEXT
            #{select_character_num}は存在しません。
            #{@characters.first.id}から#{@characters.last.id}の番号から選んでください。
          TEXT
    end
  end

  def first_action
    puts <<~TEXT

          --------------------------------------------

          あなたは#{$chosen_character.name}になりました！

          さて、これからあなたは#{$chosen_character.name}として
          長い長い旅へ出ます。
          このゲームでは2択から進む道を選んで、
          ゴールを目指していただきます。
          あなたのHPが1000以上になったらゴールとなります。

          Let's go on a long journey!

          --------------------------------------------
          TEXT
  end

  def choose_way(way_params1, way_params2)

    puts <<~TEXT

          AまたはBどちらの道に進みますか？

          A道 => a
          B道 => b

          TEXT

    while true
      print "aまたはbを入力 >"
      $select_way = gets.chomp
      if $select_way == "a"
        $chosen_character.hp += way_params1[:hp]
        puts <<~TEXT

              =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
              #{way_params1[:msg]}
              TEXT

      elsif $select_way == "b"
        $chosen_character.hp += way_params2[:hp]
        puts <<~TEXT

              =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
              #{way_params2[:msg]}
              TEXT
      end
    break if $select_way == "a" || $select_way == "b"
      puts <<~TEXT

            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
            #{$select_way}の道はありません。
            aまたはbを選んでください。
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

            TEXT
    end
  end

end
