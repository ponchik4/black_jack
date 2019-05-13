class Player
  attr_accessor :cards
  attr_reader :name, :bank

  def initialize(name)
    @name = name
    @bank = 100
    @cards = []
  end
end
