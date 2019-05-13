class Game
  attr_reader :deck

  def initialize
    @interface = Interface.new
  end

  def create_dealer
    @dealer = Dealer.new
  end

  def start_the_game
    @interface.welcome
    @deck = Deck.new
    @hand = Hand.new
    @hand_pl = @deck.hand
    @hand_deal = @deck.hand
    #ставки
    @hand.hand_pl
    puts "Карты дилера: **"
    player_turn
    new_game
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
    @interface.create_player
    create_dealer
    start_the_game
    @hand.card_sum
  end
end
