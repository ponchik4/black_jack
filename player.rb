class Player
  attr_accessor :cards, :bank
  attr_reader :name

  def initialize
    @interface = Interface.new
    @name = @interface.player_name
    @bank = 100
    @cards = []
  end
end
