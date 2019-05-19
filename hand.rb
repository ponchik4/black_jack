class Hand
  attr_reader :hand, :card_sum

  def initialize
    @interface = Interface.new
  end

  def resalt(user)
    @cards = user.cards
    card_sum
  end

  def game_result
  end

  def card_sum(user)
    user.cards.each do |card|
      puts "Карта очков: #{card.value}"
    end
  end
end
