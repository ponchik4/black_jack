class Card
  attr_reader :suit; :card; :value

  def initislize
    @suit = suit
    @card = card
    @value = card_value
  end

  def card_value
    x = @card
    case x
    when (1..10)
      @card.to_i
    when J,Q,K
      10
    when A
      11
    end
  end
end
