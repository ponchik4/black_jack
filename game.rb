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
    @player.hand.cards = @deck.give_card
    @dealer.hand.cards = @deck.give_card
    @player.make_bet
    @dealer.make_bet
    @interface.show_cards(@player)
    @interface.value(@player.hand)
    player_turn
    dealer_turn
    game_result
    new_game
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
        game_result
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
    if
      @dealer.hand.card_sum >= 17
    else
      @dealer.hand.cards += @deck.draw
    end
  end

  def game_result
    x = @player.hand.card_sum
    y = @dealer.hand.card_sum
      if x == y
        @player.return_bank && @dealer.return_bank
        @interface.nobody_win
      elsif y < x && x <= 21 || y > 21 && x <= 21
        @player.take_bank
        @interface.game_result_player_win
      elsif x < y && y <= 21 || x > 21
        @dealer.take_bank
        @interface.game_result_dealer_win
      else
        puts "Значит у меня косяк в условиях, тут есть что-то еще"
      end
   end


  #Открывают карты: Если у каждого по 3 карты. Игроку показать карты Дилера и сумму очков. +РЕЗУЛЬТАТ ИГРЫ
end
