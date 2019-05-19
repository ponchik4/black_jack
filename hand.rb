class Hand
  attr_accessor :cards
  attr_reader :hand, :card_sum

  def initialize(name)
    @interface = Interface.new
    @cards = []
  end

  def resalt(user)
    @cards = user.cards
    card_sum
  end

  def game_result
  end

  def card_sum
    x = 0
    @cards.each do |card|
      x += card.value
    end
    x
  end
end
