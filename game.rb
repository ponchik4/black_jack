class Game
  attr_reader :deck

  def initialize
    @dealer = Dealer.new
    @deck = Deck.new
    @interface = Interface.new
    @player = Player.new
    @hand = Hand.new
  end

  def start_the_game
    @interface.welcome
    @dealer.cards = @deck.give_card
    @player.cards = @deck.give_card
    @hand.resalt(@player)
    @hand.resalt(@dealer)
    @interface.player_turn








    #ставки


  end



  def dealer_turn

    #Ход Дилера: Пропустить ход (если очков у дилера 17 или более) || Добавить карту (если очков менее 17)
  end



  def game_result

  end

  #Открывают карты: Если у каждого по 3 карты. Игроку показать карты Дилера и сумму очков. +РЕЗУЛЬТАТ ИГРЫ
  #Результат игры: Выигрывает игрок, у которого сумма очков ближе к 21
  #Если у игрока сумма очков больше 21, то он проиграл
  #Если сумма очков у игрока и дилера одинаковая, то объявляется ничья
  #Банк: Деньги победителю || Ничья - ставки возвращаются игрокам
  #Когда 100 кончаются у одного из игроков - автоматически конец игры

  def user_data
    start_the_game
  end
end
