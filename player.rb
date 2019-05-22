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

  def make_bet
    @bank -= 10
  end

  def take_bank
    @bank += 20
  end

  def return_bank
    @bank += 10
  end
end
