class Dealer
  attr_accessor :cards, :bank, :hand
  attr_reader :name

  def initialize
    @name = Dealer
    @bank = 100
    @hand = Hand.new(self)
  end
end
