class Dealer
  attr_accessor :cards
  attr_reader :name, :bank
  
  def initialize
    @name = Dealer
    @bank = 100
    @cards = []
  end
end
