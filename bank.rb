module Bank
  attr_reader :bankroll

  def wallet
    @bankroll = 100
  end

  def increase_the_amount
    @bankroll += 10
  end

  def decrease_the_amount
    @bankroll -= 10
  end
end
