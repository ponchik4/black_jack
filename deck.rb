class Deck
  SUIT = ['♣', '♥', '♠', '♦']
  CARDS = [('1'..'10'), 'J', 'Q', 'K', 'A']

  attr_reader :cards

  def initislize
    cards = []
    shuffle_the_deck
  end

  private
  def shuffle_the_deck
    SUIT.each do |suit|
    CARDS.each do |rank|
    @cards << Card.new(suit, rank)
    end
    @cards.shuffle
  end
end
