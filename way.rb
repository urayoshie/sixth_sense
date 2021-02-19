
class Way
  attr_reader :hp, :msg

  def initialize(way_params)
    @hp = way_params[:hp]
    @msg = way_params[:msg]
  end
end
