class Hand
  attr_accessor :cards
  attr_reader :card_sum

  def initialize
    @cards = []
  end

  def ace_exist?
    @cards.select { |card| card.rank == 'A' }
  end

  def card_sum
    sum = 0
    @cards.each do |card|
      sum += card.value
      sum -= 10 if ace_exist? && sum > 21
    end
    sum
  end
end
