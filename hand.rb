class Hand
  attr_reader :hand, :card_sum

  def initialize
    @hand = @deck.hand
  end

  def hand_pl
    @hand.each do |card|
      puts "Карта: #{card.rank} #{card.suit} Очков: #{card.value}"
    end
  end

  def card_sum
    @card_sum = 0
    @card_sum += @cards.sum { |card| card.value }
  end
end
