class Deck
  SUIT = ['♣', '♥', '♠', '♦'].freeze
  CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze

  attr_reader :cards

  def initialize
    @cards = []
    shuffle_the_deck
  end

  def give_card
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
