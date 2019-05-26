class Card
  attr_reader :suit, :rank

  def initialize(rank, suit)
    @suit = suit
    @rank = rank
    @value = value
  end

  def value
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
