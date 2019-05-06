require_relative 'bank'

class Player
  include Bank

  attr_accessor :cards
  attr_reader :name, :wallet

  def initialize(name)
    @name = name
    wallet
  end

  def open_cards
    @suit =
    "#{@cards}-#{@suit}"
  end
end
