class Hand
  attr_reader :hand, :card_sum

  def initialize
    @interface = Interface.new
  end

  def resalt(player, dealer)
    @player.cards
    @dealer.cards
  end

  def show_cards
    @hand.each do |card|
      puts "Карта: #{card.rank} #{card.suit} Очков: #{card.value}"
    end
  end

  def open_card
  end

  def card_sum
    @card_sum = 0
    @card_sum += @cards.sum { |card| card.value }
  end
end
