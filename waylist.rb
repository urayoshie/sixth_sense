require "./way.rb"

class WayList

  def initialize(way_params)
    @ways = []
    way_params.each do |params|
      @ways << Way.new(params)
    end
  end

  def left_hp(character_params)
      if $select_way == "a"
        $chosen_character.hp = 0 if $chosen_character.hp <= 0
        puts <<~TEXT

            #{$chosen_character.name}のHPは#{$chosen_character.hp}です。
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

            TEXT
      elsif $select_way == "b"
        $chosen_character.hp = 0 if $chosen_character.hp <= 0
        puts <<~TEXT

            #{$chosen_character.name}のHPは#{$chosen_character.hp}です。
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

            TEXT
      end
  end
end
