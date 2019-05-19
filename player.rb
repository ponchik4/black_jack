class Player
  attr_accessor :cards, :bank, :hand
  attr_reader :name

  def initialize
    @interface = Interface.new
    @interface.player_name
    @name = name
    @bank = 100
    @hand = Hand.new(self)
  end
end
