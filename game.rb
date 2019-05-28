class Game
  attr_reader :deck, :player, :dealer

  def initialize
    @dealer = Dealer.new
    @interface = Interface.new
    @player = Player.new
    start_the_game
  end

  def start_the_game
    @interface.welcome
    @interface.wallet(@player)
    @deck = Deck.new
    make_bet
    @interface.show_cards(@player)
    @interface.close_card
    @interface.value(@player.hand)
    if @player.hand.card_sum >= 21
      game_result
    else
      player_turn
      dealer_turn
      game_result
    end
    if @player.bank >= 10
      new_game
    else
      @interface.looser
    end
  end

  def make_bet
    [@player, @dealer].each do |user|
      user.hand.cards = @deck.give_card
      user.make_bet
    end
  end

  def player_turn
    user_input = @interface.choose
    case user_input
    when 1
      @player.hand.cards += @deck.draw
      @interface.show_cards(@player)
      @interface.value(@player.hand)
    when 2
      dealer_turn
    when 3
      true
    else
      @interface.wrong_answer
      player_turn
    end
  end

  def new_game
    user_input = @interface.new_game
    case user_input
    when 1
      start_the_game if @player.bank >= 10
    when 2
      @interface.bye
      abort
    else
      @interface.wrong_answer
      new_game
      end
  end

  def dealer_turn
    @dealer.hand.cards += @deck.draw if @dealer.hand.card_sum <= 17
  end

  def game_result
    player_score = @player.hand.card_sum
    dealer_score = @dealer.hand.card_sum
    @interface.show_cards_dealer(@dealer)
    @interface.value_dealer(@dealer.hand)
    if player_score == dealer_score
      @player.return_bank && @dealer.return_bank
      @interface.nobody_win
    elsif player_score < dealer_score && dealer_score <= 21 || player_score > 21
      @dealer.take_bank
      @interface.game_result_dealer_win
    else
      @player.take_bank
      @interface.game_result_player_win
    end
   end
end
