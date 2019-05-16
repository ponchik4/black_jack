class Dealer
  attr_accessor :cards, :bank
  attr_reader :name

  def initialize
    @name = Dealer
    @bank = 100
    @cards = []
  end
end
