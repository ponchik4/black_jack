class Game
  attr_reader :deck, :player, :dealer

  def initialize
    @dealer = Dealer.new
    @deck = Deck.new
    @interface = Interface.new
    @player = Player.new
    @hand = Hand.new
    start_the_game
  end

  def start_the_game
    @interface.welcome
    @dealer.cards = @deck.give_card
    @player.cards = @deck.give_card
    @player.bank -=10
    @dealer.bank -=10
    @interface.show_cards(@player)
    @hand.card_sum(@player)
    player_turn
    new_game
  end

  def player_turn
    x = @interface.choose
    case x
      when 1
        @player.cards += @deck.draw
        @interface.show_cards(@player)
        @hand.card_sum(@player)
      when 2
        dealer_turn
      when 3
        @hand.game_result
      else
        @interface.wrong_answer
        player_turn
      end
  end

  def new_game
    x = @interface.new_game
    case x
      when 1
        Game.new
      when 2
        @interface.bye
        abort
      else
        @interface.wrong_answer
        new_game
      end
  end

  def dealer_turn

    #Ход Дилера: Пропустить ход (если очков у дилера 17 или более) || Добавить карту (если очков менее 17)
  end


  #Открывают карты: Если у каждого по 3 карты. Игроку показать карты Дилера и сумму очков. +РЕЗУЛЬТАТ ИГРЫ
  #Результат игры: Выигрывает игрок, у которого сумма очков ближе к 21
  #Если у игрока сумма очков больше 21, то он проиграл
  #Если сумма очков у игрока и дилера одинаковая, то объявляется ничья
  #Банк: Деньги победителю || Ничья - ставки возвращаются игрокам
  #Когда 100 кончаются у одного из игроков - автоматически конец игры


end
