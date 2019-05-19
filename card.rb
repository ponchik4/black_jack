class Card
  attr_reader :suit, :rank, :value

  def initialize(rank, suit)
    @suit = suit
    @rank = rank.to_i
    @value = card_value
  end

  def card_value
    x = @rank
    case x
    when 'J', 'Q', 'K'
      10
    when 'A'
      11
    else
      @rank
    end
  end
end
