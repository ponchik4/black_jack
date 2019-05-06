class Deck
  SUIT = ['♣', '♥', '♠', '♦']
  CARDS = [*('2'..'10'), 'J', 'Q', 'K', 'A']

  attr_reader :cards

  def initialize
    @cards = []
    shuffle_the_deck
  end

  def hand
    @cards.pop(2)
  end

  def draw
    @cards.pop(1)
  end

  private

  def shuffle_the_deck
    CARDS.each do |rank|
      SUIT.each do |suit|
          @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end
end
