class Character
  attr_reader :id, :name, :offense
  attr_accessor :hp
  @@count = 0

  def initialize(character_params)
    @id = @@count += 1
    @name = character_params[:name]
    @hp = character_params[:hp]
    @offense = character_params[:offense]
  end
end
