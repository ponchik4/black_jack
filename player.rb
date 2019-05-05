require_relative 'bank'

class Player
  include Bank

  def initialize(name)
    @name = name
    @cards = []
    wallet
  end

  def open_cards
    "#{@cards}-#{@suit}"
  end
end
