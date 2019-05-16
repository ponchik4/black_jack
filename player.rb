class Player
  attr_accessor :cards
  attr_reader :name, :bank

  def initialize
    @interface = Interface.new
    @name = @interface.player_name
    @bank = 100
    @cards = []
  end
end
