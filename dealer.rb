class Dealer
  attr_accessor :cards, :bank, :hand
  attr_reader :name

  def initialize
    @name = Dealer
    @bank = 100
    @hand = Hand.new
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
